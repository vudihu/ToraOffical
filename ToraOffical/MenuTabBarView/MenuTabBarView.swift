//
//  MenuTabBarView.swift
//  ToraOffical
//
//  Created by Hung Vu on 05/03/2025.
//

import UIKit

protocol MenuTabBarViewDelegate: AnyObject {
    func didChangeTab(tabIndex: Int, oldIndex: Int)
}

class MenuTabBarView: BaseNibView {
    // MARK: Outlets
    @IBOutlet private weak var collectionView: UICollectionView!
    
    // MARK: - Private properties
        private let menuTabbarViewNib = "MenuTabBarView"
        private let tabbarCell = "TabbarCell"
        private let duration: TimeInterval = 0.2
        private var tabWidth: CGFloat?
        private var prevTab = 0
        private var isEnable = true
        private var isBlock = false
        private var isAnimationSelect = false
        private var pendingRequest: DispatchWorkItem?

        // MARK: - Public properties
        weak var delegate: MenuTabBarViewDelegate?
        var currentTab: Int = 0 {
            willSet { prevTab = currentTab }
            didSet {
                if !isAnimationSelect {
                    collectionView.reloadData()
                }
            }
        }

        var changeIconAnimation = false
        var tabIcons: [TabbarObject] = [] {
            didSet {
                tabWidth = UIScreen.main.bounds.width / CGFloat(tabIcons.count)
                if !isAnimationSelect {
                    collectionView.reloadData()
                }
            }
        }

        // MARK: - Init
        override init(frame: CGRect) {
            super.init(frame: frame)
            commonInit()
        }

        required init?(coder: NSCoder) {
            super.init(coder: coder)
            commonInit()
        }

        private func commonInit() {
            loadContentViewWithNib(nibName: menuTabbarViewNib)
            collectionView.register(UINib(nibName: tabbarCell, bundle: nil), forCellWithReuseIdentifier: tabbarCell)
            setEnableTabbar(enable: true)
        }

        // MARK: - Public methods
        func updateCurrentTab(_ index: Int, needReload: Bool) {
            currentTab = index
            if needReload {
                collectionView.reloadData()
            }
        }

        func setEnableTabbar(enable: Bool) {
            self.isEnable = enable
        }

        func setBlockTabbar(block: Bool) {
            self.isBlock = block
        }

        func reloadItems(at indexPaths: [IndexPath]) {
            if Thread.isMainThread {
                collectionView.reloadItems(at: indexPaths)
            } else {
                DispatchQueue.main.async {
                    self.collectionView.reloadItems(at: indexPaths)
                }
            }
        }
    }

    // MARK: - UICollectionViewDataSource
    extension MenuTabBarView: UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            tabIcons.count
        }

        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: tabbarCell, for: indexPath) as? TabbarCell else {
                return UICollectionViewCell()
            }

            let tabType = tabIcons[indexPath.item]
            let state: TabbarState = (indexPath.item == currentTab) ? .active : .inactive
            cell.updateTabState(state, withType: tabType)
            return cell
        }
    }

    // MARK: - UICollectionViewDelegate
extension MenuTabBarView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard !isBlock, isEnable, indexPath.item != currentTab else { return }
        
        isAnimationSelect = true
        setEnableTabbar(enable: false)
        
        let oldTab = currentTab
        currentTab = indexPath.item
        delegate?.didChangeTab(tabIndex: currentTab, oldIndex: oldTab)
        
        UIView.performWithoutAnimation {
            reloadItems(at: [IndexPath(item: oldTab, section: 0)])
        }
        
        if let cell = collectionView.cellForItem(at: indexPath) as? TabbarCell {
            let tabType = tabIcons[indexPath.item]
            let tabsDistance = abs(currentTab - oldTab)
            let delay = TimeInterval((0.1 / 3.0) * (4.0 - Double(tabsDistance)))
            let duration: TimeInterval = 0.1
            
            pendingRequest?.cancel()
            let requestWorkItem = DispatchWorkItem {
                cell.animateState(duration: duration, delay: delay, updateState: .active, withType: tabType)
            }
            
            pendingRequest = requestWorkItem
            DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: requestWorkItem)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.setEnableTabbar(enable: true)
        }
    }
}

    // MARK: - UICollectionViewDelegateFlowLayout
extension MenuTabBarView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / CGFloat(max(tabIcons.count, 1))
        return CGSize(width: width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return .zero
    }
}

