//
//  Constant.swift
//  SBOfficial
//
//  Created by PS Solutions on 9/7/17.
//  Copyright © 2017 Softbank. All rights reserved.
//

import UIKit
import CoreLocation

struct Constant {
    // MARK: BasePath
    public static let basePathSBOfficialST: String = "https://staging.ozone.api.softbank.jp/sbapp"
    public static let basePathSBOfficialPR: String = "https://ozone.api.softbank.jp/sbapp"
    public static let basePathStub1: String = "https://ozone-stub.sbofficial.developer.tm-ps.co.jp"
    public static let basePathStub2: String = "https://ozone-stub-verify.sbofficial.developer.tm-ps.co.jp"
    public static let basePathStub3: String = "https://ozone-stub-sb.sbofficial.developer.tm-ps.co.jp"
    public static let basePathStub4: String = "https://ozone-stub-4.sbofficial.developer.tm-ps.co.jp"
    public static let basePathStub5: String = "https://ozone-stub-5.sbofficial.developer.tm-ps.co.jp"
    public static let basePathST3: String = "https://staging.ozone.api.softbank.jp/sbapp"
    
    public static let basePathSBOfficialSTNotAuthen: String = "https://staging.ozone.api.softbank.jp/sbapp2"
    public static let basePathSBOfficialPRNotAuthen: String = "https://ozone.api.softbank.jp/sbapp2"
    public static let basePathST3NotAuthen: String = "https://staging.ozone.api.softbank.jp/sbapp2"
    
    public static let basePathShopInfoST: String = "https://st.mam.mb.softbank.jp/"
    public static let basePathShopInfoPR: String = "https://mam.mb.softbank.jp/"
    public static let baseBBPathSBOfficialST: String = "https://staging.ozone.api.softbank.jp"
    public static let baseBBPathSBOfficialPR: String = "https://ozone.api.softbank.jp"
    #if SBOfficial_PR
    public static let basePathOneTimeToken: String = "https://ozone.api.softbank.jp/sbappl2"
    public static let basePathWebviewRegisterBB: String = "https://sbb-entry.itc.softbank.jp"
    #else
    public static let basePathOneTimeToken: String = "https://staging.ozone.api.softbank.jp/sbappl2"
    public static let basePathWebviewRegisterBB: String = "https://st.sbb-entry.itc.softbank.jp"
    #endif

    // MARK: Common
    public static let iPhoneAppUserAgent = "iPhone;sb-official"
    public static let iPadAppUserAgent = "iPad;sb-official"
    public static let authorizationKey: String = "Authorization"
    public static let headerParamsKey: String = "X-OZONE-SERVICE-ID"
    public static let xUserTergetYm: String = "xUserTergetYm"
    public static let xUserMidroiId: String = "xUserMidroiId"
    public static let xUserSub: String = "x-user-sub"
    public static let crashlyticsSubKey: String = "sub"
    public static let numberZero: String = "0"
    public static let numberOne: String = "1"
    public static let numberTwo: String = "2"
    public static let numberThree: String = "3"
    public static let numberFour: String = "4"
    public static let numberFive: String = "5"
    public static let numberSix: String = "6"
    public static let hashtag: String = "#"
    public static let numberZeroOne: String = "01"
    public static let numberZeroTwo: String = "02"
    public static let emptyCellId: String = "EmptyCell"
    public static let textStar = "{*}"
    public static let breakLine = "{BR}"
    public static let textNumberDot = "{1.}"
    public static let textNumberMark = "{1-1.}"
    public static let textHashtagNumber = "{#1.}"
    public static let textHashtagNumberMark = "{#1-1.}"
    public static let titleNote11: String = "1-1."
    public static let titleNote12: String = "1-2."
    public static let titleNote2: String = "2."
    public static let titleNote3: String = "3."
    public static let stringDot: String = "・"
    
    // MARK: DIALOG MAINTAIN
    public static let dialogMaintain: String = "DL-000_MAINTENANCE"
    
    // MARK: Keychain key
    public static let realmEncryptKeyKeychainKey: String = "realmEncryptKeyKeychainKey"
    
    // AUTHORIZATION VALUE
//    public static var authorizationValue: String {
//        return "Bearer " + (UserDataDefaults.shared.ssoAccessToken ?? String.empty)
//    }
    //layer tag name for UIView extension using
    public static let gradientLayerName = "gradientLayer"
    public static let bottomToTopGradientLayerName = "bottomToTopGradientLayerName"
    
    public static let requestFailCode: Int = -1
    public static let toaskTimeOut: Double = 3.0
    public static let tabbarHeight: CGFloat = 72
    public static let tabbarContentHeight: CGFloat = 56
    public static let notifyDeleteViewHeight: CGFloat = 56
    public static let bottomMargin: CGFloat = 24 // bottomSpace
    public static let bottomMarginInListMode: CGFloat = 48 // bottomSpace
    public static let bottomMarginAPL894: CGFloat = 48 // bottomSpace
    public static let bottomMarginML080: CGFloat = 91
    // APL-1167
    public static let stringNull: String = "null"
    // MARK: APL-894
    public static let sc000bottomMargin: CGFloat = 48
    public static let hm000TopMargin: CGFloat = 24
    public static let hm000TopMarginEditMode: CGFloat = 24
    public static let if000BottomMargin: CGFloat = 36
    public static let refreshLoaderAnimationSize: CGFloat = 60
    public static let statusViewHeight: CGFloat = 20
    public static let ratioLeftRight: CGFloat = UIScreen.main.bounds.size.width / 100 * 6.4
    public static let widthScreen: CGFloat = UIScreen.main.bounds.size.width
    public static let maxFontSizeTitleHeader: CGFloat = 18.0
    public static let minFontSizeTitleHeader: CGFloat = 14.0
    public static let ag000HeightForSegmantHeader: CGFloat = 213.0
    // MARK: APL-2608
    public static let webviewOtokuHelpguideButton: String = "webview-otoku-helpguide-btn"
    public static let maxHeightSizeButton: CGFloat = 56.0
    public static let minHeightSizeButton: CGFloat = 49.0
    // APL-894: GD賞向けデザイン改善_改善事項まとめ_210510.xd
    public static let minFontSizeMSNSubtitleHeader: CGFloat = 13.0
    public static let maxFontSizeMSNSubtitleHeader: CGFloat = 15.0
    public static let minFontSizeTextSubtitleHeader: CGFloat = 12.0
    public static let maxFontSizeTextSubtitleHeader: CGFloat = 14.0
    public static let topConstraintConstant: CGFloat = 0.0
    public static let heightLineViewInHeader: CGFloat = 0.5
    public static let minTopConstraintSubtitle: CGFloat = 4.0
    public static let maxTopConstraintSubtitle: CGFloat = 6.0

    public static let dateTimeFormat: String = "yyyyMMddHHmmss"
    public static let dateFormat: String = "yyyyMMdd"
    public static let unlimitDataDateTimeFormat: String = "yyyyMMddHHmm"
    public static let unlimitDataDateTimeStringFormat = "M/d HH:mm"
    public static let dateTimeServerFormat: String = "EEE, dd MMM yyyy HH:mm:ss zzz"
    public static let requestTimeStampFormat: String = "yyyyMMddHHmmssSSS"
    public static let dateTimeSBIDFormat: String = "yyyy/MM/dd HH:mm:ss"
    public static let dateTimeResponseFormat: String = "yyyy/M/dd HH:mm:ss"
    public static let realmPWMDatabaseName: String = "passwordmanager.realm"
    public static let lastResponseDateFormat: String = "yyyy-MM-dd"
    public static let dateyyyyMMddmmssJap = "yyyy年M月d日（E）HH:mm"
    public static let dateMMddmmssJap = "M月d日（E）HH:mm"
    public static let dateMMddJap = "M月d日（E）"
    public static let dateyyyyMMddJapan = "yyyy年M月d日"
    public static let dateyyyyMd = "yyyy/M/d"
    public static let dateMMddHHmm = "M月d日 HH:mm"
    public static let japanyyyyMdHHmm: String = "yyyy年M月d日 HH:mm"
    public static let japanyyyyMd: String = "yyyy年M月d日"
    public static let dateFormatdd = "dd"
    // TMPS-549: From 1.11.1 onwards, use database "data_cache2.realm"
    public static let realmCacheDatabaseName: String = "data_cache2.realm"
    public static let realmCache2DatabaseName: String = "data_cache3.realm"
    public static let oldRealmCacheDatabaseNameList: [String] = ["data_cache.realm", "data_csv.realm", "passwordmanager.realm"]
    public static let realmCommonDatabaseName: String = "data_common.realm"
    public static let realmShopDatabaseName: String = "shop.realm"
    
    public static let passwordSBForText: String = "12345678"
    public static let eg005TopImage: String = "https://ceres.ominext.dev/images/eg005_image_top.png"
    
    public static let yahooIDTitle: String = "Yahoo! ID"
    public static let appleIDTitle: String = "Apple ID"
    public static let googleTitle: String = "Google"
    public static let facebookTitle: String = "Facebook"
    public static let instagramTitle: String = "Instagram"
    public static let twitterTitle: String = "Twitter"
    public static let amazonTitle: String = "Amazon"
    public static let rakutenTitle: String = "楽天"
    public static let mercariTitle: String = "メルカリ"
    public static let sBIDTitle: String = "SBID"
    
    public static let yahooIDURL: String = "login.yahoo.co.jp"
    public static let appleIDURL: String = "appleid.apple.com"
    public static let googleURL: String = "accounts.google.com"
    public static let facebookURL: String = "www.facebook.com"
    public static let twitterURL: String = "twitter.com"
    public static let instagramURL: String = "instagram.com"
    public static let amazonURL: String = "www.amazon.com"
    public static let rakutenURL: String = "rakuten.co.jp"
    public static let mercariURL: String = "www.mercari.com/jp"
    public static let sBIDURL: String = "id.my.softbank.jp"
    
    public static let usernameSBID: String = "09011112222"
    
    public static let kStringLanguageEnglish: String = "en"
    public static let kStringLanguageJapanese: String = "ja"
    
    public static let characterSetString: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~"
    public static let randomString: String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    
    public static let expireTime: Double = 120
    public static let contentOffsetYHeader: CGFloat = 56
    // APL-894: When contentOffset of header equal half of header's height, start animation for header
    public static let startContentOffsetYHeaderAPL894: CGFloat = 28.0
    public static let endContentOffsetYHeaderAPL894: CGFloat = 56
    //APL-1272
    public static let startContentOffsetYHeaderAPL1272: CGFloat = 0
    public static let endContentOffsetYHeaderAPL1272: CGFloat = 28
    
    public static let defaultPlusHeightLabel: CGFloat = 4
    
    public static let HM000MarginEdit: CGFloat = 36
    public static let HM000CellPadding: CGFloat = 4 * UIScreen.main.bounds.width / 100
    public static let EL000ContractSelectionViewHeight: CGFloat = 68.0
    
    // Time Zone:
    public static let timezoneJST = "JST"
    
    // Environment
    public static let osKind = "iOS"

    #if SBOfficial_PR
    public static let environment = "PR"
    #elseif SBOfficial_ST
    public static let environment = "ST"
    #elseif SBOfficialTestFlight
    public static let environment = "stub"
    #else
    public static let environment = "dev"
    #endif
    
    // Split string:
    public static let splitStringChar: Character = ","
    public static let splitStringRange: Int = 3
    
    public static let splitMsnChar: Character = "-"
    public static let splitMsnRange: Int = 4
    
    // MARK: Common webview
    public static let webviewTimeout = 60
    
    // MARK: Pull Refresh Time
    public static let timerPullToRefresh = 0.5
    public static let ptrOverOffset: CGFloat = -60.0
    public static let ptrStartRefreshOffset: CGFloat = -10.0
    //-74 is fake position for loading icon to fit XD distance
    public static let ptrLoadingOffset: CGFloat = 60.0
    public static let ptrStartRequestOffset: CGFloat = 80
    
    #if TESTFLIGHT
    public static let securityApplicationGroupIdentifier: String = "group.jp.co.pssolutions.SBOfficialTest"
    #else
    public static let securityApplicationGroupIdentifier: String = "group.jp.co.softbank.SBOfficialTest.AppGroups"
    #endif
    
    public static let appStoreBundleId: String = "itms-apps://itunes.apple.com/app/"
    #if SBOfficial_PR
    public static let appStoreUrl: String = "https://itunes.apple.com/jp/app/id1416481094?mt=8"
    #else
    public static let appStoreUrl: String = "https://itunes.apple.com/jp/app/id1417779447?mt=8"
    #endif
    public static let firebaseStorageMobileConfig: String = "https://firebasestorage.googleapis.com/v0/b/for-sb-project.appspot.com/o/profile_sample%2FDemo_v1.1.html?alt=media&token=2808bb9e-b11c-45e1-82ac-b010bee52608"
    public static let urlInitialSettingWebView: String = "http://test085.members-dev.com/12_FS/FS-002_0.html"
    public static let urlNotifyWebView: String = "http://test085.members-dev.com/05_IF/IF-015_0.html"
    public static let urlPersonalWebView: String = "http://test085.members-dev.com/10_PS/PS-000_0.html"
    #if SBOfficial_PR
    public static let sbwifiMobileConfig: String = "http://sbwifi.jp/"
    #else
    public static let sbwifiMobileConfig: String = "http://210.151.12.16/"
    #endif
    
    #if SBOfficial_PR
    static let getBlockInfoUrl: String = "https://exm.mb.softbank.jp/sb-official-app/regulation/GetBlockInfo.json"
    #elseif SBOfficialTestFlight
    static let getBlockInfoUrl: String = "https://sbofficial-version.developer.tm-ps.co.jp/sb-official-app/regulation/GetBlockInfo.json"
    #elseif SBOfficial_ST
    static let getBlockInfoUrl: String = "https://st.exm.mb.softbank.jp/sb-official-app/regulation/GetBlockInfo.json"
    #else
    static let getBlockInfoUrl: String = "https://sbofficial-version.developer.tm-ps.co.jp/sb-official-app/regulation/GetBlockInfo.json"
    #endif
    
    // MARK: - Tabbar
    public static let tabbarTitleHM000 = "tabbarTitleHM000"
    public static let tabbarTitleHM001 = "tabbarTitleHM001"
    public static let tabbarTitleIF000 = "tabbarTitleIF000"
    public static let tabbarTitleHM004 = "tabbarTitleHM004"
    
    // MARK: - Localize String
    public static let stringRequestTimedOut = "stringRequestTimedOut"
    public static let stringFido: String = "FIDO"
    public static let stringPasswordManager: String = "stringPasswordManager"
    public static let stringDemo: String = "stringDemo"
    public static let stringRadioImprovementApplication: String = "stringRadioImprovementApplication"
    public static let stringLocalNotification: String = "stringLocalNotification"
    public static let stringChangeLanguage: String = "stringChangeLanguage"
    public static let stringTitleTutorialScreen: String = "stringTitleTutorialScreen"
    public static let stringTitleLastViewTutorialScreen: String = "stringTitleLastViewTutorialScreen"
    public static let stringDetailTutorialScreen: String = "stringDetailTutorialScreen"
    public static let stringTitleSyncData: String = "stringTitleSyncData"
    public static let stringTitleLoginTutorial: String = "stringTitleLoginTutorial"
    public static let stringTitleUnlockScreen: String = "stringTitleUnlockScreen"
    public static let stringTitleUnlockingScreen: String = "stringTitleUnlockingScreen"
    public static let stringTitleHyperLinkChangePassword: String = "stringTitleHyperLinkChangePassword"
    public static let stringPlaceholderPassword: String = "stringPlaceholderPassword"
    public static let stringTitleCancelUnlockScreen: String = "stringTitleCancelUnlockScreen"
    public static let stringAlertLockPasswordLockFirst: String = "stringAlertLockPasswordLockFirst"
    public static let stringAlertLockPasswordLockLast: String = "stringAlertLockPasswordLockLast"
    public static let stringAlertWrongPassword: String = "stringAlertWrongPassword"
    public static let stringAlertInputMoreThan8Charater: String = "stringAlertInputMoreThan8Charater"
    public static let stringAlertNoEnrolledFingers: String = "stringAlertNoEnrolledFingers"
    public static let stringAlertAuthenticationFailedFifth: String = "stringAlertAuthenticationFailedFifth"
    public static let stringTitleTransferDataScreen: String = "stringTitleTransferDataScreen"
    public static let stringAlertNoAccountiCloud: String = "stringAlertNoAccountiCloud"
    public static let stringAlertNotGetAcountiCloud: String = "stringAlertNotGetAcountiCloud"
    public static let stringAlertDeviceDeniedAccount: String = "stringAlertDeviceDeniedAccount"
    public static let stringTitleRegisterAccount: String = "stringTitleRegisterAccount"
    public static let stringUsernameRegisterAccount: String = "stringUsernameRegisterAccount"
    public static let stringPasswordRegisterAccount: String = "stringPasswordRegisterAccount"
    public static let stringUrlRegisterAccount: String = "stringUrlRegisterAccount"
    public static let stringMemoRegisterAccount: String = "stringMemoRegisterAccount"
    public static let stringSaveRegisterAccount: String = "stringSaveRegisterAccount"
    public static let stringAlertNoInternet: String = "stringAlertNoInternet"
    public static let stringAlertNotConnectToServer: String = "stringAlertNotConnectToServer"
    public static let stringAlertRequestTimeOut: String = "stringAlertRequestTimeOut"
    public static let stringAlertUnknownError: String = "stringAlertUnknownError"
    public static let stringAlertOk: String = "stringAlertOk"
    public static let stringAlertRetry: String = "stringAlertRetry"
    public static let stringAlertCancel: String = "stringAlertCancel"
    public static let stringAlertSetting: String = "stringAlertSetting"
    public static let stringAlertError: String = "stringAlertError"
    public static let stringTitleRegisterAccountScreen: String = "stringTitleRegisterAccountScreen"
    public static let StringButtonConfirmDelete: String = "stringButtonConfirmDelete"
    public static let StringCancel: String = "stringCancel"
    public static let StringMessageConfirmDelete: String = "stringMessageConfirmDelete"
    public static let StringDelete: String = "stringDelete"
    public static let StringTitleListAccount: String = "stringTitleListAccount"
    public static let StringConfirmAction: String = "stringConfirmAction"
    public static let stringTitleBackNavigation: String = "stringTitleBackNavigation"
    public static let stringTitleCloseNavigation: String = "stringTitleCloseNavigation"
    public static let stringTitleCodeCoupon: String = "stringTitleCodeCoupon"
    public static let stringCommonFunctions: String = "stringCommonFunctions"
    public static let stringSignalImprovement: String = "stringSignalImprovement"
    public static let stringNotification: String = "stringNotification"
    public static let stringDemoGlobalSlider: String = "stringDemoGlobalSlider"
    public static let stringDemoGraphColumn: String = "stringDemoGraphColumn"
    public static let stringDemoGraphCircle: String = "stringDemoGraphCircle"
    public static let stringDemoAnimationGif: String = "stringDemoAnimationGif"
    public static let stringPlayAgain: String = "stringPlayAgain"
    public static let stringUserPhone: String = "stringUserIphone"
    public static let stringSquareGraph: String = "stringSquareGraph"
    public static let stringProfile: String = "stringProfile"
    public static let stringQRCode: String = "stringQRCode"
    public static let stringQRCodeIsEmpty: String = "stringQRCodeIsEmpty"
    public static let stringQRCodeMetadataOuputError: String = "stringQRCodeMetadataOuputError"
    public static let stringQRCodeDeviceInputError: String = "stringQRCodeDeviceInputError"
    public static let urlSettingCameraPermission: String = UIApplication.openSettingsURLString
    public static let stringSettings: String = "stringSettings"
    public static let stringQRCodeGoSettingTitle: String = "stringQRCodeGoSettingTitle"
    public static let stringQRCodeGoSettingMessage: String = "stringQRCodeGoSettingMessage"
    public static let stringQRCodeCaptureDevice: String = "stringQRCodeCaptureDevice"
    public static let stringQRCodeLightButtonError: String = "stringQRCodeLightButtonError"
    public static let stringInitialSetting: String = "stringInitialSetting"
    public static let hm004NewFunction: String = "hm004NewFunction"
    public static let hm004SBService: String = "hm004SBService"
    public static let stringDateCompare = "stringDateCompare"
    public static let hm001MenuLauncherTitle = "hm001MenuLauncherTitle"
    public static let hm000CardNotifi = "hm000CardNotifi"
    public static let hm001CardNotifi = "hm001CardNotifi"
    public static let hm001CardNotifiFlatRate = "hm001CardNotifiFlatRate"
    public static let hm001CardNotifiPatternA = "hm001CardNotifiPatternA"
    public static let hm000UnlimitedDataTitle = "hm000UnlimitedDataTitle"
    public static let hm000UnlimitedDataStart = "hm000UnlimitedDataStart"
    public static let hm000UnlimitedDataEnd = "hm000UnlimitedDataEnd"
    public static let dt000UseDataPurchasedTimeNote = "dt000UseDataPurchasedTimeNote"
    public static let dt000CouldNotGetRemainingUsageTime = "dt000CouldNotGetRemainingUsageTime"
    public static let dt000UnlimitedDataStartTimeEndTime = "dt000UnlimitedDataStartTimeEndTime"
    public static let hm00007SelectUnlimitedDataLabel = "hm00007SelectUnlimitedDataLabel"
    public static let hm00105SelectUnlimitedDataLabel = "hm00105SelectUnlimitedDataLabel"
    public static let dt00006ApplyUnlimitedDataLabel = "dt00006ApplyUnlimitedDataLabel"
    public static let dt00009ApplyUnlimitedDataLabel = "dt00009ApplyUnlimitedDataLabel"
    public static let dt00007ExtendUnlimitedDataLabel = "dt00007ExtendUnlimitedDataLabel"
    public static let dt02800TapXLinkLabel = "dt02800TapXLinkLabel"
    public static let dt02800ConditionLinkLabel = "dt02800ConditionLinkLabel"
    public static let dt02800ConditionLinkLabelYM = "dt02801ConditionLinkLabel"
    public static let dt02800ComercialLinkLabel = "dt02800ComercialLinkLabel"
    public static let dt02800ComercialLinkLabelYM = "dt02801ComercialLinkLabel"
    public static let dt02800ConfirmButtonLabel = "dt02800ConfirmButtonLabel"
    public static let dt02900AgreeButtonLabel = "dt02900AgreeButtonLabel"
    public static let dt02900TapBackButtonLabel = "dt02900TapBackButtonLabel"
    public static let stringRemainData = "stringRemainData"
    public static let dt02800stringPurchase = "dt02800stringPurchase"
    public static let dt02800formatContentForSE = "dt02800formatContentForSE"
    public static let dt02800formatContent = "dt02800formatContent"
    public static let messageBodyBL09200 = "messageBodyBL09200"
    public static let messageBodyLK005 = "messageBodyLK005"
    public static let messageBodyLK009 = "messageBodyLK009"
    public static let jsMessenger = "jsMessenger"
    public static let messageBodyBL085 = "messageBodyBL085"
    public static let airContractSubNaviName = "softBankAirSubNavi"
    public static let hikariContractSubNaviName = "softBankHikariSubNavi"
    public static let airContractName = "softBankAir"
    public static let hikariContractName = "softBankHikari"
    public static let menuBBContractName = "menuBBContractName"
    public static let stringError = "stringError"
    public static let stringOK = "stringOK"
    
    // SSL error message
    public static let stringsslErrorTitle: String = "sslErrorTitleString"
    public static let stringsslErrorMessage: String = "sslErrorMessageString"

    // Scheme
    public static let schemeSC000NoCardTitle: String = "schemeSC000NoCardTitle"
    public static let schemeSC000NoCardMessage: String = "schemeSC000NoCardMessage"
    public static let schemeSC000NoCardButton: String = "schemeSC000NoCardButton"
    
    // Other
    public static let stringEnvironment: String = "stringEnvironment"
    public static let stringST3: String = "stringST3"
    public static let stringStub: String = "stringStub"
    public static let stringStubTest: String = "stringStubTest"
    public static let stringInfoDevice: String = "stringInfoDevice"
    public static let stringIDFV: String = "stringIDFV"
    public static let stringIDFA: String = "stringIDFA"
    public static let stringNetworkConnectionStatus: String = "stringNetworkConnectionStatus"
    public static let stringConnectedNetwork: String = "stringConnectedNetwork"
    public static let stringNetworkDisconnected: String = "stringNetworkDisconnected"
    public static let stringWifiStatus: String = "stringWifiStatus"
    public static let stringAirplaneStatus: String = "stringAirplaneStatus"
    public static let stringOnline: String = "stringOnline"
    public static let stringOffline: String = "stringOffline"
    public static let stringON: String = "stringON"
    public static let stringOFF: String = "stringOFF"
    public static let string3G: String = "string3G"
    public static let stringWifi: String = "stringWifi"
    public static let stringMobile: String = "mobile"
    public static let stringCanNotGetCarrier: String = "stringCanNotGetCarrier"
    public static let stringAuthenticationResponseDto: String = "stringAuthenticationResponseDto"
    public static let positionOfTotal: Int = 17
    public static let positionOfRemain: Int = 19
    public static let keyResultCode: String = "resultCode"
    public static let keyErrorMsg: String = "errorMsg"
    public static let keyCustomerTrafficList: String = "customerTrafficList"
    public static let keyAdditionalItem: String = "additionalItem"
    public static let keyTotal: String = "total"
    public static let keyRemain: String = "remain"
    public static let keyCurrent: String = "current"
    public static let stringAdvancedCircle: String = "stringAdvancedCircle"
    public static let protocols: String = "http://"
    public static let protocolsSecure: String = "https://"
    public static let japanLocaleString: String = "ja_JP_POSIX"
    public static let stringBankCardTitleString: String = "stringBankCardTitleString"
    public static let stringSBCardTitleString: String = "stringSBCardTitleString" //APL-481: Update title SBcard + font, marrgin title to subTitle
    public static let stringBankCardUnitPriceString: String = "stringBankCardUnitPriceString"
    public static let stringBankCardAttributedDetailString: String = "stringBankCardAttributedDetailString"
    public static let stringUnknowError: String = "stringUnknowError"
    public static let comma: String = ","
    public static let falseString: String = "false"
    
    public static let stringNotify: String = "stringNotify"
    public static let stringPersonal: String = "stringPersonal"
    public static let stringImportantNotices: String = "stringImportantNotices"
    public static let stringImportantNotices5: String = "stringImportantNotices5"
    public static let stringToDo: String = "stringToDo"
    public static let plusChar: String = "+"
    public static let dash: Character = "-"
    public static let commaString: Character = ","
    public static let sbRoundRadioButton: String = "SBRoundRadioButton"
    public static let maintenanceFlag: String = "1"
    public static let maintenanceSubFlag9001: String = "9001"
    public static let maintenanceSubFlag9002: String = "9002"
    public static let homeCellTapFinishKey: String = "homeTransitionFinish"
    public static let cellTapAnimationObserverName: String = "cellTapAnimationObserver"
    public static let authenObjectHM004Key: String = "authenObjectHM004"
    
    public static let defaultTimeDelay: Int = 500
    // update version
    public static let stringUpdateVersionTitle: String = "stringUpdateVersionTitle"
    public static let stringUpdateVersionMessage: String = "stringUpdateVersionMessage"
    public static let stringUpdateVersionButton: String = "stringUpdateVersionButton"
    
    //AppStartupCheck
    public static let dictAppStartupLastDisplayDate: String = "dictAppStartupLastDisplayDate"
    public static let screenNoneCallAppStartupCheck: String = "HM001"
    
    // Constant Device token
    
    public static let stringErrorSaveDataInKeychain: String = "Can't save data in keychain"
    public static let stringErrorLoadDataInKeychain: String = "Can't load data in keychain"
    public static let stringErrorUpdateDataInKeychain: String = "Can't update data in keychain"
    public static let stringNothingRetrieveKeychain: String = "Nothing was retrieved from the keychain. Status code %f"
    public static let noteDefault: [String] = ["注意事項が入ります。注意事項が入ります。注意事項が入ります。", "注意事項が入ります。注意事項が入ります。注意事項が入ります。注意事項が入ります。注意事項が入ります。注意事項が入ります。", "注意事項が入ります。注意事項が入ります。注意事項が入ります。注意事項が入ります。注意事項が入ります。注意事項が入ります。"]
    
    public static let pt025IsShowAgainKey: String = "PT025IsShowAgainKey"
    public static let sc027IsShowAgainKey: String = "SC027IsShowAgainKey"
    public static let sc029IsSkipAuthentication: String = "SC029IsSkipAuthentication"
    
    //ContractPlanLView
    public static let aboutTextSwitchingPlan: String = "aboutTextSwitchingPlan"
    public static let aboutTextSwitchingOptionCall: String = "aboutTextSwitchingOptionCall"
    public static let homePlanContractCardTitle: String = "homePlanContractCardTitle"
    public static let homePlanInstallmentCardTitle: String = "homePlanInstallmentCardTitle"
    public static let homePlanInstallmentOtherContractPrefix: String = "homePlanInstallmentOtherContractPrefix"
    public static let homePlanInstallmentOtherContractSuffix: String = "homePlanInstallmentOtherContractSuffix"
    public static let homePlanContractTitleButtonLongTerm: String = "homePlanContractTitleButtonLongTerm"
    public static let homePlanContractAsterisk: String = "homePlanContractAsterisk"
    public static let homePlanContractAsteriskJP: String = "homePlanContractAsteriskJP"
    public static let homePlanContractNotice: String = "homePlanContractNotice"
    public static let getLongTermBirthdayBonus: String = "getLongTermBirthdayBonus"
    public static let registerPaypayForLongTermBirthday: String = "registerPaypayForLongTermBirthday"
    public static let homeMailStringFilterSpamMailOff: String = "homeMailStringFilterSpamMailOff"
    public static let homeMailStringFilterSpamMailStandard: String = "homeMailStringFilterSpamMailStandard"
    public static let homeMailStringFilterSpamMailStrong: String = "homeMailStringFilterSpamMailStrong"
    public static let stringHomeErrorToastNoInternet: String = "stringHomeErrorToastNoInternet"
    public static let stringHomeErrorToastAPIError: String = "stringHomeErrorToastAPIError"
    public static let homePlanContractPaymentMethodInternetBanking: String = "homePlanContractPaymentMethodInternetBanking"
    public static let stringTitleTextML081Cell: String = "stringTitleTextML081Cell"
    public static let stringTitleTextML081CellCaseTwo: String = "stringTitleTextML081CellCaseTwo"
    public static let stringTitleTextML081CellCaseTwo2: String = "stringTitleTextML081CellCaseTwo2"

    public static let homePlanContractTopSaleNotify: String = "homePlanContractTopSaleNotify"
    
    public static let cache2Over30MinError = "cache2Over30MinError"
    public static let cache2Over30MinMaintainNoDate = "cache2Over30MinMaintainNoDate"
    public static let cache2Over30MinMaintain = "cache2Over30MinMaintain"
    public static let stringTitleTextML070IsGenenal: String = "stringTitleTextML070IsGenenal"
    public static let stringTitleTextML070NotGenenal: String = "stringTitleTextML070NotGenenal"
    
    //SubTypeCde API
    public static let returnSubTypeCde9105: String = "9105"
    public static let returnSubTypeCde9107: String = "9107"
    
    /// APL-301 & APL-309 Maintain
    public static let mam012MaintainanceTitle: String = "mam012MaintainanceTitle"
    public static let mam012MaintainanceTitleTime: String = "mam012MaintainanceTitleTime"
    public static let mam012MaintainanceTimeInterfix: String = "mam012MaintainanceTimeInterfix"
    public static let mam012MaintainanceTimeInterfix2Line: String = "mam012MaintainanceTimeInterfix2Line"
    public static let mam012MaintainanceTimeSuffix: String = "mam012MaintainanceTimeSuffix"
    public static let mam012MaintainTimeFormat = "M/d H:mm"
    
    public static let disableFunctionId: String = "IF-014-disableId"
    public static let startDirectionUrl: String = "https://www.softbank.jp/mobile/"
    public static let slashCharacter: String = "/"
    public static let tildeCharacter: String = "~"
    public static let tildeCharacterFullSize: String = "〜"
    
    // MARK: APL-538
    public static let stringHM009Header: String = "stringHM009Header"
    public static let stringHM009SubHeader: String = "stringHM009SubHeader"
    public static let stringHM009ButtonConfirm: String = "stringHM009ButtonConfirm"
    public static let stringHM009ButtonClose: String = "stringHM009ButtonClose"
    public static let stringHM010AaddedCardSuccess: String = "stringHM010AaddedCardSuccess"
    public static let stringHM01400: String = "stringHM01400"
    public static let stringHM01401: String = "stringHM01401"
    public static let stringHM01402: String = "stringHM01402"
    public static let stringSeeLess: String = "stringSeeLess"
    public static let dismissChangeEnvironmentScreen: String = "dismissChangeEnvironmentScreen"
    
    // MARK: APL-629
    public static let stringShowNewNCard: String = "新しいカードがn枚追加されました"
    public static let stringShowNewOneCard: String = "新しいカードが追加されました"
    // MARK: APL-1917
    public static let stringOyako: String = "詳細を見る"
    // MARK: APL-1915YM
    public static let stringDT02801TapXLink: String = "閉じる"
    public static let stringDT02801ConditionLink: String = "規約はこちら"
    public static let stringDT02801ComercialLink: String = "サービス詳細はこちら"
    public static let stringDT02801ConfirmButton: String = "申し込み内容を確認する"
    public static let stringDT02901AgreeButton: String = "同意して申し込みを完了する_%@"
    public static let stringDT02901TapBackButton: String = "戻る"

    // MARK: APL-7
    // LK-000:
    public static let titleConstractDisplaySettings: String = "titleConstractDisplaySettings"
    public static let stringEditDisplayNameAndColor: String = "stringEditDisplayNameAndColor"
    public static let stringSortOrder: String = "stringSortOrder"
    public static let stringCancelDisplayContract: String = "stringCancelDisplayContract"
    public static let stringCancel: String = "stringCancel"
    
    // MARK: - APL-854
    public static let titleStringError = "titleStringError"
    public static let errorLCard = "errorLCard"
    public static let contentStringError = "contentStringError"
    public static let contentStringErrorSBPoint = "contentStringErrorSBPoint"
    public static let contentStringErrorSBPointForYM = "contentStringErrorSBPointForYM"
    public static let stringDisplayCache2Over30Mins = "stringDisplayCache2Over30Mins"
    
    public static let stNewCardVersionProduction: String = "1.22.0"
    
    // MARK: - APL-1523
    public static let stringArletDisable = "stringArletDisable"
    
    public static let cvanillaErrorCode1M00 = "cvanillaErrorCode1M00"
    public static let cvanillaErrorCode1M01 = "cvanillaErrorCode1M01"
    public static let cvanillaErrorCode1M02 = "cvanillaErrorCode1M02"
    public static let cvanillaErrorCode1M03 = "cvanillaErrorCode1M03"
    public static let cvanillaErrorCode1M04 = "cvanillaErrorCode1M04"
    public static let cvanillaErrorCode9M01 = "cvanillaErrorCode9M01"
    public static let cvanillaErrorCode9M99 = "cvanillaErrorCode9M99"
    public static let resultRE2001 = "resultRE2001"
    public static let resultRE2002 = "resultRE2002"
    public static let resultRE2003 = "resultRE2003"
    public static let resultRE2004 = "resultRE2004"
    public static let resultRE2005 = "resultRE2005"
    public static let resultRE3001 = "resultRE3001"
    public static let resultRE3002 = "resultRE3002"
    public static let resultRE3003 = "resultRE3003"
    public static let resultRE3004 = "resultRE3004"
    public static let resultRE5102 = "resultRE5102"
    public static let resultRE3006 = "resultRE3006"
    public static let statusCodeNM2001 = "statusCodeNM2001"
    public static let cvanillaCommonError = "cvanillaCommonError"
    public static let statusCodeNM1005 = "statusCodeNM1005"
    
    // MARK: - AG-081
    public static let timeGetBonusBirthday: String = "timeGetBonusBirthday"
    public static let longTermBirtdayInfAction: String = "webview-birthday-bonus-info"
    public static let birthdayCampaingDescript: String = "birthdayCampaingDescript"
    
    // MARK: - APL-1021
    public static let webviewSbShopSearch: String = "webview-sb-shop-search"
    public static let webviewYmShopSearch: String = "webview-ym-shop-search"
    
    // MARK: - APL-1278
    public static let webviewPayPay: String = "webview-paypay"
    // MARK: APL 1644
    public static let stringAlert1644 = "から再延長できます"
    
    // MARK: - APL-1467
    public static let title042Screen = "042Title"
    public static let pt046Title = "046Title"
    public static let pt046TitleEventGA = "pt046TitleEventGA"
    public static let useFeeForCharge = "useFeeForCharge"
    public static let useFeeForChargeEventGA = "useFeeForChargeEventGA"
    public static let chargeToSBCard = "chargeToSBCard"
    public static let exchangePointReward = "exchangePointReward"
    public static let closeString = "stringErrorAlertConfirmButtonTitle"
    public static let pt049LimitPoint = "pt049LimitPoint"
    public static let pt049LimitPointDescript = "pt049LimitPointDescript"
    public static let chargePayPayDescript = "chargePayPayDescript"
    public static let paypayCharge = "paypayCharge"
    public static let chargeSBDescript = "chargeSBDescript"
    public static let sbCharge = "sbCharge"
    public static let usePointDescript = "usePointDescript"
    public static let usePoint = "usePoint"
    public static let pt051Title = "pt051Title"
    public static let pt051Message = "pt051Message"
    public static let pt051MessageYMobile = "pt051MessageYMobile"
    public static let pt01800PointNormal = "10001"
    public static let domainCdJPT = "0505"
    
    //APL-678
    static let titleShopServiceButton = "ショップ受付サービス一覧"

    //APL-1325
    static let characterRegex: String = "[^0-9.,]"
    
    // MARK: - APL-1472
    public static let descriptionTopValue = "descriptionTopValue"
    public static let descriptionTopValueAG009 = "descriptionTopValueAG009"
    public static let topValueTitleHM001 = "topValueTitleHM001"
    
    // MARK: APL-1740
    public static let titleAut02817 = "titleAut02817"
    public static let titleWarningAut02817 = "titleWarningAut02817"
    public static let descriptionWarningAut02817 = "descriptionWarningAut02817"
    public static let noticeDetailAut02817 = "noticeDetailAut02817"
    public static let backScreenAut02817 = "backScreenAut02817"
    public static let vnpTitleAut02817 = "vnpTitleAut02817"
    public static let securityTitleAut02817 = "securityTitleAut02817"
    public static let utilizationTitleAut02817 = "utilizationTitleAut02817"
    public static let affiliateTitleAut02817 = "affiliateTitleAut02817"
    public static let amountDataTitleAut02817 = "amountDataTitleAut02817"
    public static let bottomGuideAut02817 = "bottomGuideAut02817"

    // MARK: - APL-1974
    public static let titleTopPage = "titleTopPage"
    public static let contentTopPage = "contentTopPage"
    public static let postImprovementRequest = "postImprovementRequest"
    public static let postHistory = "postHistory"
    
    // MARK: APL-11
    public static let stringAnswer = "stringAnswer"
    public static let stringQuestionSurvey = "stringQuestionSurvey"
    public static let medallia = "Medallia"
    
    // MARK: APL-1022
    public static let settingCardTitle = "settingCardTitle"
    public static let airTerminalCardTitle = "airTerminalCardTitle"
    public static let maintainContentChargeCard = "maintainContentChargeCard"
    public static let notRegisterAirTerminal = "notRegisterAirTerminal"
    public static let registeredAirTerminal = "registeredAirTerminal"
    public static let receiptRentalEquipment = "receiptRentalEquipment"
    public static let scheduledDeliveredAround = "scheduledDeliveredAround"
    public static let titleCardProceduresUsing = "titleCardProceduresUsing"
    public static let attentionImportantQuestionAsk = "attentionImportantQuestionAsk"
    public static let attentionOpenNoticeCard = "attentionOpenNoticeCard"
    public static let titleBB033 = "titleBB033"
    public static let messageBB033 = "messageBB033"
    public static let titleBB034 = "titleBB034"
    public static let messageBB034 = "messageBB034"
    public static let titleBB035 = "titleBB035"
    public static let messageBB035 = "messageBB035"
    public static let titleBB036 = "titleBB036"
    public static let messageBB036 = "messageBB036"
    public static let titleBB037 = "titleBB037"
    public static let messageBB037 = "messageBB037"
    public static let titleBB083 = "titleBB083"
    public static let messageBB083 = "messageBB083"
    public static let titleDestination = "titleDestination"
    public static let stringSoftBank = "stringSoftBank"
    public static let titleBB032 = "titleBB032"
    public static let messageBB032 = "messageBB032"
    public static let detailNotifyHomeCampaign = "detailNotifyHomeCampaign"
    public static let linkProcedureAir = "https://m.bbss.softbankbb.co.jp/MOB/myPage/?page=airmvgself&viewCode=root_infosms101&mem=memCertAFsd"
    public static let linkProcedureHikari = "https://m.bbss.softbankbb.co.jp/MOB/myPage/?page=mvgself&viewCode=root_infosms101&mem=memCertAFsd"
    public static let linkHouseMoving = "https://m.bbss.softbankbb.co.jp/MOB/myPage/?page=contractchange"
    public static let linkPayment = "https://m.bbss.softbankbb.co.jp/MOB/myPage/?page=paymentmethod&viewCode=root_app_mypage&mem=memCertAFsd"
    public static let linkCampaign = "https://m.bbss.softbankbb.co.jp/MOB/myPage/?page=campaign"
    public static let infoIdAir = "infoIdAir"
    public static let infoIdProcedure = "infoIdProcedure"
    public static let infoIdCampaign = "infoIdCampaign"
    public static let stringOtherContracts = "stringOtherContracts"
    public static let bb024customerMoving = "bb024customerMoving"
    public static let bb024customerMovingDetail = "bb024customerMovingDetail"
    public static let bb024customerMovingDetailWithAirContract = "bb024customerMovingDetailWithAirContract"
    public static let bb024customerProcedure = "bb024customerProcedure"
    public static let bb024customerProcedureDetail = "bb024customerProcedureDetail"
    public static let bb023noteCampaign = "bb023noteCampaign"
    
    // MARK: APL-2198
    public static let titleYmChangeGNG = "titleYmChangeGNG"
    public static let titleSBMChangeGNG = "titleSBMChangeGNG"
    public static let messYmChangeGNG = "messYmChangeGNG"
    public static let messSBMChangeGNG = "messSBMChangeGNG"
    public static let enableLocation = "enableLocation"
    public static let disableLocation = "disableLocation"
    public static let enableAlwaysLocation = "enableAlwaysLocation"
    public static let enableThirdPartyTracking = "enableThirdPartyTracking"
    public static let disableThirdPartyTracking = "disableThirdPartyTracking"
    
    // MARK: APL-2358
    public static let ag13700GetYen = "ag13700GetYen"
    public static let ag13700GetPaypay = "ag13700GetPaypay"
    public static let ag13700FreeForUp7Month = "ag13700FreeForUp7Month"
    public static let ag13700Discounts = "ag13700Discounts"
    public static let ag13700LifeYell = "ag13700LifeYell"
    
    // MARK: APL-2758
    public static let text206 = "206"
    public static let optionOPT030 = "OPT030"
    
    // MARK: APL-1022
    public static let headTitleFirstBB120 = "headTitleFirstBB120"
    public static let headTitleSecondBB120 = "headTitleSecondBB120"
    public static let productNameTitleBB120 = "productNameTitleBB120"
    public static let shipTypeTitleBB120 = "shipTypeTitleBB120"
    public static let shipDateTitleBB120 = "shipDateTitleBB120"
    public static let companyNameTitleBB120 = "companyNameTitleBB120"
    public static let trackingNumberTitleBB120 = "trackingNumberTitleBB120"
    public static let arriveDateTitleBB120 = "arriveDateTitleBB120"
    public static let anshinPackDateTitleBB120 = "anshinPackDateTitleBB120"
    public static let anshinPackDateValueBB120 = "anshinPackDateValueBB120"
    public static let anshinPackTitleBB120 = "anshinPackTitleBB120"
    public static let headTitleFirstBB137 = "headTitleFirstBB137"
    public static let headTitleSecondBB137 = "headTitleSecondBB137"
    public static let headTitleFirstBB138 = "headTitleFirstBB138"
    public static let headTitleSecondBB138 = "headTitleSecondBB138"
    public static let headTitleSecondBB13801 = "headTitleSecondBB13801"
    public static let labelLinkBB138 = "labelLinkBB138"
    public static let labelNoteLinkBB138 = "labelNoteLinkBB138"
    public static let bb023BillingTitle = "bb023BillingTitle"
    
    // MARK: APL-2817
    public static let netflixNewSubmit = "netflixNewSubmit"
    public static let chagenOptionNetflixNew = "chagenOptionNetflixNew"
    public static let showContentNetflixNew = "showContentNetflixNew"
    
    // MARK: APL-2881
    public static let APL881DescriptonSBM = "APL881_descripton_SBM"
    public static let APL881DescriptonYM = "APL881_descripton_YM"
    public static let APL881RrowserTextSBM = "APL881_browser_text_SBM"
    public static let APL881BrowserTextYM = "APL881_browser_text_YM"
    static var universalLinkSBM: [String] {
        #if SBOfficial_PR
        return ["my.softbank.jp", "mam.mb.softbank.jp"]
        #else
        return ["st.my.softbank.jp", "st.mam.mb.softbank.jp"]
        #endif
    }
    
    static var universalLinkYM: [String] {
        #if SBOfficial_PR
        return ["my.ymobile.jp"]
        #else
        return ["st.my.ymobile.jp"]
        #endif
    }
    
    // MARK: APL-2870
    public static let titleDetailLimited = "titleDetailLimited"
    
    //APL-2854
    public static let hm000NotifyCardTitle1stElement = "hm000NotifyCardTitle1stElement"
    public static let hm000NotifyCardTitle2ndElement = "hm000NotifyCardTitle2ndElement"
    //APL-285[LDSOL][20211101][ADD][BEGEIN]
    // MARK: APL-285
    public static let fourPercentWidth = UIScreen.main.bounds.width * 4 / 100
    //APL-285[LDSOL][20211101][ADD][END]
    public static var hm001IgnoreSetupDataCardWithCurrentNumber = false
    
    // MARK: APL-2489
    public static let contentAlertAG010APL2489 = "contentAlertAG010APL2489"
    
    /**
     * Description about function (require): APL-614
     * Refer (optional):
     * Q&A, Feature, Bug (task jira):
     * - Link Jira: https://insight.fsoft.com.vn/jira3/browse/MYSB19-18986
     */
    #if SBOfficial_PR
    // SB_PR
    public static let requestSBIDContentPrefixLink = "https://www.softbank.jp/mobile/special/support-channel/contents/"
    public static let urlBL000Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MSB020063"
    public static let urlBL000APL1533Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MSB010000"
    public static let urlAG000Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MSB010002"
    public static let urlHM000Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MSB020063"
    public static let urlAG000APL1533Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MSB010002"
    public static let urlAG010Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WCO010002"
    public static let urlDT000Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MRERE0000"
    public static let urlML000Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MSB020060"
    public static let urlSH003Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MWBAA0057"
    public static let urlAG067Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBC010008"
    public static let urlAG089Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBC010010"
    public static let urlAG027Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBC010012"
    public static let urlAG040Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBC010005"
    public static let urPT030Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MSB010003"
    public static let urlPA000SBBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MWBAA0142"
    public static let urlML080SBBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/CME010002"
    public static let urlBL016SBMBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WCO010042_app"
    public static let urlPT018Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBC010015_app"
    public static let urlPA004Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MWBAA0145_app"
    public static let urlDT007Browser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MWBAA0015_app"
    public static let urlDT008Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MWBAA0015-008_app"
    public static let urlAG09304SBBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010001"
    public static let urlPS172Browser: String = "https://www.softbank.jp/mysoftbank/universal_link/a05m5l"
    // YM_PR
    public static let urlHM000YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MUC020021"
    public static let urlDT000YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MRERE0000"
    public static let urlBL000YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WCO010005"
    public static let urlAG000YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MWBWL0020"
    public static let urlAG089YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MWBWL0050"
    public static let urlAG067YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MWBWL0030"
    public static let urlAG010YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WCO010002"
    public static let urlML000YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MUC010001"
    public static let urlSH003YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MWBWL0170"
    public static let urlAG040YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MWBWL0060"
    public static let urlAG027YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MWBWL0070"
    public static let urlPA00YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MWBWL0192"
    public static let urlBL016YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WCO010042_app"
    public static let urlPT030YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MWBWL0220_app"
    public static let urlPT018YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MWBWL0221_app"
    public static let urlPA004YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MWBWL0194_app"
    public static let urlDT007YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MWBWL0121_app"
    public static let urlDT008YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MWBWL0121-008_app"
    public static let urlAG09304YMBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910003"
    //APL-2772
    public static let urlDT000ymPurchaseDataBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MRERE0002"
    public static let urlAG067ymChangeCallOptionsrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910020_app"
    public static let urlAG089ymPositionBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910002_app"
    public static let urlAG089ymGroupCallBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910015_app"
    public static let urlAG089ymCallWaitingBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910006_app"
    public static let urlAG089ymStopServiceBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910011_app"
    public static let urlAG089ymWebSecurityBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910016_app"
    public static let urlAG089ymWideSupportBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910021_app"
    public static let urlAG089ymDataIncreaseBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910013_app"
    public static let urlAG089ymAnswerMachineBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910014_app"
    public static let urlAG089ymInvoiceServiceBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910012_app"
    public static let urlDT000sbmPurchaseDataBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MRERE0002_app"
    public static let urlAG089sbmPositionBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010009_app"
    public static let urlAG089sbmStopServiceBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010031_app"
    public static let urlAG089sbmWebSecurityBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010006_app"
    public static let urlAG089sbmGroupCallBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010025_app"
    public static let urlAG089sbmInvoiceServiceBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010034_app"
    public static let urlAG089sbmAnswerMachineBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010027_app"
    public static let urlAG089sbmCallWaitingBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010026_app"
    public static let urlPS172YMBrowser: String = "https://www.softbank.jp/mysoftbank/universal_link/a1wuis"
    public static let urlEG000: String = "https://www.softbank.jp/mysoftbank/universal_link/a2iuv6"
    public static let urlEG003: String = "https://www.softbank.jp/mysoftbank/universal_link/a3lxrj"
    public static let urlEG000Ym: String = "https://www.softbank.jp/mysoftbank/universal_link/a4j59o"
    #else
    // SB_ST
    public static let requestSBIDContentPrefixLink = "https://www.softbank.jp/mobile/special/support-channel/contents/"
    public static let urlBL000Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MSB020063"
    public static let urlBL000APL1533Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MSB010000"
    public static let urlAG000Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MSB010002"
    public static let urlHM000Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MSB020063"
    public static let urlAG000APL1533Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MSB010002"
    public static let urlAG010Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/WCO010002"
    public static let urlDT000Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MRERE0000"
    public static let urlML000Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MSB020060"
    public static let urlSH003Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MWBAA0057"
    public static let urlAG067Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/WBC010008"
    public static let urlAG089Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/WBC010010"
    public static let urlAG027Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/WBC010012"
    public static let urlAG040Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/WBC010005"
    public static let urPT030Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MSB010003"
    public static let urlPA000SBBrowser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MWBAA0142"
    public static let urlML080SBBrowser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/CME010002"
    public static let urlBL016SBMBrowser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/WCO010042_app"
    public static let urlPT018Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/WBC010015_app"
    public static let urlPA004Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MWBAA0145_app"
    public static let urlDT007Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MWBAA0015_app"
    public static let urlDT008Browser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/MWBAA0015-008_app"
    public static let urlAG09304SBBrowser: String = "https://st.my.softbank.jp/msb/d/webLink/doSend/WBO010001"
    public static let urlPS172Browser: String = "https://www.softbank.jp/mysoftbank/universal_link/a05m5l"
    // YM_ST
    public static let urlHM000YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MUC020021"
    public static let urlDT000YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MRERE0000"
    public static let urlBL000YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/WCO010005"
    public static let urlAG000YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MWBWL0020"
    public static let urlAG089YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MWBWL0050"
    public static let urlAG067YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MWBWL0030"
    public static let urlAG010YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/WCO010002"
    public static let urlML000YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MUC010001"
    public static let urlSH003YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MWBWL0170"
    public static let urlAG040YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MWBWL0060"
    public static let urlAG027YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MWBWL0070"
    public static let urlPA00YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MWBWL0192"
    public static let urlBL016YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/WCO010042_app"
    public static let urlPT030YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MWBWL0220_app"
    public static let urlPT018YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MWBWL0221_app"
    public static let urlPA004YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MWBWL0194_app"
    public static let urlDT007YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MWBWL0121_app"
    public static let urlDT008YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/MWBWL0121-008_app"
    public static let urlAG09304YMBrowser: String = "https://st.my.ymobile.jp/muc/d/webLink/doSend/WBO910003"
    //APL-2772
    public static let urlDT000ymPurchaseDataBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/MRERE0002"
    public static let urlAG067ymChangeCallOptionsrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910020_app"
    public static let urlAG089ymPositionBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910002_app"
    public static let urlAG089ymGroupCallBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910015_app"
    public static let urlAG089ymCallWaitingBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910006_app"
    public static let urlAG089ymStopServiceBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910011_app"
    public static let urlAG089ymWebSecurityBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910016_app"
    public static let urlAG089ymWideSupportBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910021_app"
    public static let urlAG089ymDataIncreaseBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910013_app"
    public static let urlAG089ymAnswerMachineBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910014_app"
    public static let urlAG089ymInvoiceServiceBrowser: String = "https://my.ymobile.jp/muc/d/webLink/doSend/WBO910012_app"
    public static let urlDT000sbmPurchaseDataBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/MRERE0002_app"
    public static let urlAG089sbmPositionBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010009_app"
    public static let urlAG089sbmStopServiceBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010031_app"
    public static let urlAG089sbmWebSecurityBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010006_app"
    public static let urlAG089sbmGroupCallBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010025_app"
    public static let urlAG089sbmInvoiceServiceBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010034_app"
    public static let urlAG089sbmAnswerMachineBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010027_app"
    public static let urlAG089sbmCallWaitingBrowser: String = "https://my.softbank.jp/msb/d/webLink/doSend/WBO010026_app"
    public static let urlPS172YMBrowser: String = "https://www.softbank.jp/mysoftbank/universal_link/a1wuis"
    public static let urlEG000: String = "https://www.softbank.jp/mysoftbank/universal_link/a2iuv6"
    public static let urlEG003: String = "https://www.softbank.jp/mysoftbank/universal_link/a3lxrj"
    public static let urlEG000Ym: String = "https://www.softbank.jp/mysoftbank/universal_link/a4j59o"
    #endif
    
    //APL-2546
    public static let endpointBBWebview: String = "/swe-api/encoded"
    public static let keyHashData = "fjsrkfrbfzdjmssepi6e"
    public static let keyAESCrypt = "a6GRAbgr3FT1PFq4"
    
    public static let stringStartWithApp: String = "stringStartWithApp"
    
    //[APL-1021][SoQos154349][BEGIN]
    public static let htmlYMobile = """
                                        <!DOCTYPE html>
                                        <html>
                                        <body>
                                        <script src="https://www.ymobile.jp/help/myym/resource/common/p/js/product-thumbnail/main.js">
                                        </script>
                                        </body>
                                        </html>
                                    """
    public static let varBaseUrlYMobile = "_productThumbnai_BASEURL"
    public static let varModelYMobile = "_model"
    //[APL-1021][SoQos154349][END]
    public static let linemo: String = "LINEMO"
    public static let keyAESCafe: String = "yJ50bGrajYc2mIvA"
    public static let ivAESCafe: String = "VzdzPbETKeYJHI8s"
    
    enum VersionOS: String {
        case iOS100 = "10.0"
        case iOS1002 = "10.0.2"
        case iOS1003 = "10.0.3"
        case iOS102 = "10.2"
        case iOS1021 = "10.2.1"
        case iOS103 = "10.3"
        case iOS1031 = "10.3.1"
        case iOS1032 = "10.3.2"
        case iOS1033 = "10.3.3"
        case iOS110 = "11.0"
        case iOS1101 = "11.0.1"
        case iOS1102 = "11.0.2"
        case iOS1103 = "11.0.3"
        
        static func currentOsVersion() -> String {
            return VersionOS(rawValue: UIDevice.current.systemVersion)?.rawValue ?? ""
        }
    }
    
    enum Color: String {
        case blue = "#198DFF"
        case backgroundTutorial = "#272727"
        case unlockView = "#D0D4DA"
        case buttonBackground = "#E7E9EB"
    }
    
    enum FontText: CGFloat {
        case size30pt = 30.0
        case size20pt = 20.0
        case size18pt = 18.0
        case size16pt = 16.0
        case size15pt = 15.0
        case size14pt = 14.0
    }
    
    enum FontName: String {
        case hiraginoSansW3 = "HiraginoSans-W3"
        case hiraginoSansW6 = "HiraginoSans-W6"
        case sFProTextBold = "SFProText-Bold"
        case hiraKakuProNW6 = "HiraKakuProN-W6"
        case hiraKakuProNW3 = "HiraKakuProN-W3"
        case hiraKakuProW6 = "HiraKakuPro-W6"
        case sFProTextRegular = "SFProText-Regular"
    }
    
    enum ContentViewType: String {
        case scrollView = "ScrollView"
        case noneScrollView = "NoneScrollView"
    }
    
    enum TypePushView {
        case passwordManagerViewController
        case transferDataViewController
        case dismissUnlockViewController
    }
    
    enum TypeLogin {
        case noInternet
        case wrongPassword
        case inputMoreThan8Charater
        case notConnectToServer
        case requestTimeOut
        case unknownError
        case wrongPasswordUnLockPassword
        case wrongPasswordLockPassword
        case successLogin
        case updateLabelLockPassword
    }
    
    enum TypeErrorTouchID {
        case noEnrolledFingers
        case authenticationFailedFiveth
    }
    
    enum TypeErrorTranferData {
        case notConnectToServer
        case noAccountiCloud
        case notGetAccountiCloud
        case deviceDeniedAccount
    }
    
    enum PayPayBoxAcceptPatternValue: String {
        case notRegister0 = "0"
        case notRegister1 = "1"
        case register2 = "2"
        case register3 = "3"
    }
    
    enum StringAlert {
        case okAlert
        case cancel
        case setting
        case error
    }
    
    enum StringRegisterAccount {
        case title
        case username
        case password
        case url
        case memo
        case save
    }
    
    enum DeviceType: String {
        case iPhone4 = "iPhone 4"
        case iPhone4s = "iPhone 4s"
        case iPhone5 = "iPhone 5"
        case iPhone5c = "iPhone 5c"
        case iPhone5s = "iPhone 5s"
        case iPhone6 = "iPhone 6"
        case iPhone6Plus = "iPhone 6 Plus"
        case iPhone6s = "iPhone 6s"
        case iPhone6sPlus = "iPhone 6s Plus"
        case iPhone7 = "iPhone 7"
        case iPhone7Plus = "iPhone 7 Plus"
        case iPhoneSE = "iPhone SE"
        case iPhone8 = "iPhone 8"
        case iPhone8Plus = "iPhone 8 Plus"
        case iPhoneX = "iPhone X"
        case simulator = "Simulator"
        case iPhoneXS = "iPhone XS"
        case iPhoneXSMax = "iPhone XS Max"
        case iPhoneXR = "iPhone XR"
        case iPhone11 = "iPhone 11"
        case iPhone11Pro = "iPhone 11 Pro"
        case iPhone11ProMax = "iPhone 11 Pro Max"
        case iPhoneSe2nd = "iPhone SE (2nd generation)"
        case iPhone12Mini = "iPhone 12 mini"
        case iPhone12 = "iPhone 12"
        case iPhone12Pro = "iPhone 12 Pro"
        case iPhone12ProMax = "iPhone 12 Pro Max"
        case iPhone13Mini = "iPhone 13 mini"
        case iPhone13 = "iPhone 13"
        case iPhone13Pro = "iPhone 13 Pro"
        case iPhone13ProMax = "iPhone 13 Pro Max"
        case iPhoneSE3rd = "iPhone SE (3rd generation)"
        case iPhone14 = "iPhone 14"
        case iPhone14Plus = "iPhone 14 Plus"
        case iPhone14Pro = "iPhone 14 Pro"
        case iPhone14ProMax = "iPhone 14 Pro Max"
        case iPhone15 = "iPhone 15"
        case iPhone15Plus = "iPhone 15 Plus"
        case iPhone15Pro = "iPhone 15 Pro"
        case iPhone15ProMax = "iPhone 15 Pro Max"
    }
    
    enum CardType: String {
        case prepaid = "1"
        case credit = "2"
    }
    
    enum HomeTableViewCellType: Int {
        case header = 0
        case shopDetail = 1
        case chargeHome = 2
        case cardHome = 3
        case tpointHome = 4
        case searchShop = 5
    }
    
    enum ATTrackerPattern: String {
        case accept = "1"
        case notAccpet = "2"
        case notSetting = "3"
    }
    
    // Prevent show alert request location permission in case back from web view setting profile to change email
    public static var isShowingWebProfileMail: Bool = false
    
    // MARK: - Color common
    public static let colorE3F8DE: UIColor = UIColor(hexString: "#E3F8DE") ?? UIColor()
    public static let colorF57C00: UIColor = UIColor(hexString: "#F57C00") ?? UIColor()
    public static let color333333: UIColor = UIColor(hexString: "#333333") ?? UIColor()
    public static let colorF00A0A: UIColor = UIColor(hexString: "#F00A0A") ?? UIColor()
    public static let color666666: UIColor = UIColor(hexString: "#666666") ?? UIColor()
    public static let color7A7A7A: UIColor = UIColor(hexString: "#7A7A7A") ?? UIColor()
    public static let colorF8F8F8: UIColor = UIColor(hexString: "#F8F8F8") ?? UIColor()
    public static let color212121: UIColor = UIColor(hexString: "#212121") ?? UIColor()
    public static let color4D8BFF: UIColor = UIColor(hexString: "#4D8BFF") ?? UIColor()
    public static let color0059FF: UIColor = UIColor(hexString: "#0059FF") ?? UIColor()
    public static let colorCCCCCC: UIColor = UIColor(hexString: "#CCCCCC") ?? UIColor()
    public static let colorFCFDFE: UIColor = UIColor(hexString: "#FCFDFE") ?? UIColor()
    public static let color999999: UIColor = UIColor(hexString: "#999999") ?? UIColor()
    public static let colorFF3C3C: UIColor = UIColor(hexString: "#FF3C3C") ?? UIColor()
    public static let color3C80FF: UIColor = UIColor(hexString: "#3C80FF") ?? UIColor()
    public static let color4BCB2C: UIColor = UIColor(hexString: "#4BCB2C") ?? UIColor()
    public static let colorCAEDFD: UIColor = UIColor(hexString: "#CAEDFD") ?? UIColor()
    public static let colorEDF9FE: UIColor = UIColor(hexString: "#EDF9FE") ?? UIColor()
    public static let color707070: UIColor = UIColor(hexString: "#707070") ?? UIColor()
    public static let colorBBBBBB: UIColor = UIColor(hexString: "#BBBBBB")!
    public static let colorBEBEBE: UIColor = UIColor(hexString: "#BEBEBE") ?? UIColor()
    public static let color000000: UIColor = UIColor(hexString: "#000000") ?? UIColor()
    public static let color303030: UIColor = UIColor(hexString: "#303030") ?? UIColor()
    public static let color4C60A2: UIColor = UIColor(hexString: "#4C60A2") ?? UIColor()
    public static let colorFFFFFF: UIColor = UIColor(hexString: "#FFFFFF") ?? UIColor()
    public static let colorEE1616: UIColor = UIColor(hexString: "#EE1616") ?? UIColor()
    public static let color6DC26D: UIColor = UIColor(hexString: "#6DC26D") ?? UIColor()
    public static let colorF2F2F2: UIColor = UIColor(hexString: "#F2F2F2") ?? UIColor()
    public static let colorFF5C56: UIColor = UIColor(hexString: "#FF5C56") ?? UIColor()
    public static let colorFD1A57: UIColor = UIColor(hexString: "#FD1A57") ?? UIColor()
    public static let colorE2E2E2: UIColor = UIColor(hexString: "#E2E2E2") ?? UIColor()
    public static let color0086FE: UIColor = UIColor(hexString: "#0086FE") ?? UIColor()
    public static let colorE0E0E0: UIColor = UIColor(hexString: "#E0E0E0") ?? UIColor()
    public static let color007AFF: UIColor = UIColor(hexString: "#007AFF") ?? UIColor()
    public static let colorE6E6E7: UIColor = UIColor(hexString: "#E6E6E7") ?? UIColor()
    public static let colorFF9D00: UIColor = UIColor(hexString: "#FF9D00") ?? UIColor()
    public static let colorFFD035: UIColor = UIColor(hexString: "#FFD035") ?? UIColor()
    public static let color888888: UIColor = UIColor(hexString: "#888888") ?? UIColor()
    public static let color78785A: UIColor = UIColor(hexString: "#78785A") ?? UIColor()
    public static let colorFF6464: UIColor = UIColor(hexString: "#FF6464") ?? UIColor()
    public static let color847F2A: UIColor = UIColor(hexString: "#847F2A") ?? UIColor()
    public static let color419AFC: UIColor = UIColor(hexString: "#419AFC") ?? UIColor()
    public static let colorFAFAFA: UIColor = UIColor(hexString: "#FAFAFA") ?? UIColor()
    public static let color4D8BF9: UIColor = UIColor(hexString: "#4D8BF9") ?? UIColor()
    public static let color2972E3: UIColor = UIColor(hexString: "#2972E3") ?? UIColor()
    public static let color97B4E2: UIColor = UIColor(hexString: "#97B4E2") ?? UIColor()
    public static let color313131: UIColor = UIColor(hexString: "#313131") ?? UIColor()
    public static let colorC95C65: UIColor = UIColor(hexString: "#C95C65") ?? UIColor()
    public static let color0080FA: UIColor = UIColor(hexString: "#0080FA") ?? UIColor()
    public static let colorEF0B0B: UIColor = UIColor(hexString: "#EF0B0B") ?? UIColor()
    public static let colorFFEB00: UIColor = UIColor(hexString: "#FFEB00") ?? UIColor()
    public static let colorFCF3F0: UIColor = UIColor(hexString: "#FCF3F0") ?? UIColor()
    public static let colorB2B3B3: UIColor = UIColor(hexString: "#B2B3B3") ?? UIColor()
    public static let color0D80FF: UIColor = UIColor(hexString: "#0D80FF") ?? UIColor()
    public static let colorFA978F: UIColor = UIColor(hexString: "#FA978F") ?? UIColor()
    public static let colorEB3A62: UIColor = UIColor(hexString: "#EB3A62") ?? UIColor()
    public static let colorFFF8E9: UIColor = UIColor(hexString: "#FFF8E9") ?? UIColor()
    public static let color3399FF: UIColor = UIColor(hexString: "#3399FF") ?? UIColor()
    public static let colorECF6FF: UIColor = UIColor(hexString: "#ECF6FF") ?? UIColor()
    public static let UIColorFFFFFF95Percent: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.95)
    public static let UIColor8EA2D9: UIColor = #colorLiteral(red: 0.5568627451, green: 0.6352941176, blue: 0.8509803922, alpha: 1)
    public static let UIColor007AFF: UIColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
    public static let UIColorEEEEEE: UIColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)
    public static let UIColor0080FF: UIColor = #colorLiteral(red: 0, green: 0.5019607843, blue: 1, alpha: 1)
    public static let UIColorBBBBBB: UIColor = #colorLiteral(red: 0.7333333333, green: 0.7333333333, blue: 0.7333333333, alpha: 1)
    public static let UIColorFFFFFFAlpha: UIColor = UIColor(hexString: "#FFFFFF", alpha: 0.85) ?? UIColor()
    public static let UIColorFFFFFFAlphaGreen: UIColor = UIColor(hexString: "#FFFFFF", alpha: 0.6) ?? UIColor()
    public static let UIColorFFFFFFClear: UIColor = UIColor(hexString: "#FFFFFF", alpha: 0.0) ?? UIColor()
    public static let UIColor000000: UIColor = UIColor(hexString: "#000000", alpha: 0.4) ?? UIColor()
    public static let lightGreyHexColorF2F2F2: UIColor = UIColor(hexString: "#F2F2F2")!

    public static let color18C38A: UIColor = UIColor(hexString: "#18C38A") ?? UIColor()
    public static let color7C7C7C: UIColor = UIColor(hexString: "#7C7C7C") ?? UIColor()
    public static let color132D48: UIColor = UIColor(hexString: "#132D48") ?? UIColor()

    public static let colorAAAAAF: UIColor = UIColor(hexString: "#AAAAAF") ?? UIColor()
    public static let color666666Alpha80: UIColor = UIColor(hexString: "#666666", alpha: 0.8) ?? UIColor()
    public static let color000000Alpha30: UIColor = UIColor(hexString: "#000000", alpha: 0.3) ?? UIColor()
    public static let colorFFFFFFAlpha80: UIColor = UIColor(hexString: "#FFFFFF", alpha: 0.8) ?? UIColor()
    public static let color000000Alpha40: UIColor = UIColor(hexString: "#000000", alpha: 0.4) ?? UIColor()
        
    public static let color00C6A0: UIColor = UIColor(hexString: "#00C6A0") ?? UIColor()
    
    // MARK: - Tabbar
    public static let tabbarColorAlpha: CGFloat = 1.0
    public static let tabbarColor: UIColor = UIColor(hexString: "#851C0D") ?? UIColor()
    
    // MARK: - APL-849
    public static let color0070F2: UIColor = UIColor(hexString: "#0070F2") ?? UIColor()
    
    // MARK: - APL-894
    public static let color0080FF: UIColor = UIColor(hexString: "#0080FF") ?? UIColor()
    public static let color0067FF: UIColor = UIColor(hexString: "#0067FF") ?? UIColor()

    public static let colorFF444E: UIColor = UIColor(hexString: "#FF444E") ?? UIColor()
    public static let colorFF845F: UIColor = UIColor(hexString: "#FF845F") ?? UIColor()
    public static let color73B9FF: UIColor = UIColor(hexString: "#73B9FF") ?? UIColor()
    public static let color3CCC16: UIColor = UIColor(hexString: "#3CCC16") ?? UIColor()
    public static let colorFFF0F0: UIColor = UIColor(hexString: "#FFF0F0") ?? UIColor() // background alert color

    public static let colorEFFBEC: UIColor = UIColor(hexString: "#EFFBEC") ?? UIColor()
    public static let colorFEE6E6: UIColor = UIColor(hexString: "#FEE6E6") ?? UIColor()
    public static let colorFFF70F: UIColor = UIColor(hexString: "#FFF70F") ?? UIColor()
    public static let colorE5E5E5: UIColor = UIColor(hexString: "#E5E5E5") ?? UIColor()
    public static let color198CFF: UIColor = UIColor(hexString: "#198CFF") ?? UIColor()
    public static let color00ADF3: UIColor = UIColor(hexString: "#00ADF3") ?? UIColor()
    public static let colorD1E8FF: UIColor = UIColor(hexString: "#D1E8FF") ?? UIColor()
    public static let colorEDF6FF: UIColor = UIColor(hexString: "#EDF6FF") ?? UIColor()
    public static let colorE4E4E4: UIColor = UIColor(hexString: "#E4E4E4") ?? UIColor()
    public static let colorFFF2F8: UIColor = UIColor(hexString: "#FFF2F8") ?? UIColor()
    public static let colorFF8440: UIColor = UIColor(hexString: "#FF8440") ?? UIColor()
    public static let colorFF4685: UIColor = UIColor(hexString: "#FF4685") ?? UIColor()
    public static let color6DCD00: UIColor = UIColor(hexString: "#6DCD00") ?? UIColor()
    public static let color007AFE: UIColor = UIColor(hexString: "#007AFE") ?? UIColor()
    public static let color00B8F0: UIColor = UIColor(hexString: "#00B8F0") ?? UIColor()
    public static let color94BACF: UIColor = UIColor(hexString: "#94BACF") ?? UIColor()
    
    // MARK: - APL-771
    public static let colorC6DEFF: UIColor = UIColor(hexString: "#C6DEFF") ?? UIColor()
    public static let color00B5BF: UIColor = UIColor(hexString: "#00B5BF") ?? UIColor()
    
    public static let colorD3D4D8: UIColor = UIColor(hexString: "#D3D4D8") ?? UIColor()
    public static let colorBFC0C4: UIColor = UIColor(hexString: "#BFC0C4") ?? UIColor()
    public static let colorF1F1F1: UIColor = UIColor(hexString: "#F1F1F1") ?? UIColor()
    public static let colorFF7070: UIColor = UIColor(hexString: "#FF7070") ?? UIColor()
    public static let color7EBFFF: UIColor = UIColor(hexString: "#7EBFFF") ?? UIColor()
    
    // MARK: - APL-7
    public static let color625E9A: UIColor = UIColor(hexString: "#625E9A") ?? UIColor()
    public static let color034DFA: UIColor = UIColor(hexString: "#034DFA") ?? UIColor()
    public static let color6CCE2E: UIColor = UIColor(hexString: "#6CCE2E") ?? UIColor()
    public static let colorFFC32C: UIColor = UIColor(hexString: "#FFC32C") ?? UIColor()
    public static let color009BEA: UIColor = UIColor(hexString: "#009BEA") ?? UIColor()
    public static let colorFF5327: UIColor = UIColor(hexString: "#FF5327") ?? UIColor()
    public static let color9A48D7: UIColor = UIColor(hexString: "#9A48D7") ?? UIColor()
    public static let color00AC78: UIColor = UIColor(hexString: "#00AC78") ?? UIColor()
    public static let color222222: UIColor = UIColor(hexString: "#222222") ?? UIColor()
    public static let colorBDBB99: UIColor = UIColor(hexString: "#BDBB99") ?? UIColor()
    public static let colorFF6CAA: UIColor = UIColor(hexString: "#FF6CAA") ?? UIColor()
    public static let color96DC00: UIColor = UIColor(hexString: "#96DC00") ?? UIColor()
    
    // MARK: - APL-1021
    public static let colorABD5F1: UIColor = UIColor(hexString: "#ABD5F1") ?? UIColor()
    public static let colorFFD800: UIColor = UIColor(hexString: "#FFD800") ?? UIColor()
    public static let colorFFAD3E: UIColor = UIColor(hexString: "#FFAD3E") ?? UIColor()
    public static let colorAAD6F0: UIColor = UIColor(hexString: "#AAD6F0") ?? UIColor()
    public static let color1A90FE: UIColor = UIColor(hexString: "#1A90FE") ?? UIColor()
    public static let colorADD2F2: UIColor = UIColor(hexString: "#ADD2F2") ?? UIColor()
    public static let color1096FB: UIColor = UIColor(hexString: "#1096FB") ?? UIColor()
    public static let colorAED1F3: UIColor = UIColor(hexString: "#AED1F3") ?? UIColor()
    public static let colorA7DAEF: UIColor = UIColor(hexString: "#A7DAEF") ?? UIColor()
    public static let colorCEDCEE: UIColor = UIColor(hexString: "#CEDCEE") ?? UIColor()
    public static let color565656: UIColor = UIColor(hexString: "#565656") ?? UIColor()
    public static let color00308B: UIColor = UIColor(hexString: "#00308B") ?? UIColor()
    // MARK: - APL-1022
    public static let color7FBFFF: UIColor = UIColor(hexString: "#7FBFFF") ?? UIColor()
    static var version = APIVersion.version8
    //[APL-1021][SoQos156020[Version For Account Type YMobile]
    static var version10 = APIVersion.version10
    
    enum APIVersion: String {
        case version8 = "8.0.0"
        case version10 = "10.0.0"
        
        var version: String {
            switch self {
            case .version8:
                return self.rawValue
            case .version10:
                return self.rawValue
            }
        }
        
//        var hashItem: String {
//            return EncryptCircleParam.encrypt(value: AppService.shareInstance.encryptItem, hashItem: AppService.shareInstance.hashItem).0
//        }
//        
//        var encryptItem: String {
//            return EncryptCircleParam.encrypt(value: AppService.shareInstance.encryptItem, hashItem: AppService.shareInstance.hashItem).1
//        }
    }
    
    // APL-2825
    #if SBOfficial_PR
    public static let linkJsonMaintain: String = "https://www.softbank.jp/mysoftbank/d/officialapp/json/prod/allRestrictionInfo.json"
    #else
    public static let linkJsonMaintain: String = "https://www.softbank.jp/mysoftbank/d/officialapp/json/test/allRestrictionInfo.json"
    #endif
    // APL-2788
    #if SBOfficial_PR
    public static let ocpApimSubscriptionKey: String = "aa697d6d1b534e7d8e9a674186167155"
    #else
    public static let ocpApimSubscriptionKey: String = "aa10ccffda454f058dfce7f901cbba7a"
    #endif
}

enum ColorType: Int {
    case inactive = 0
    case active
    case error
    case other
}

enum ModuleType {
    case charge
    case sbcard
    case data
    case plan
    case point
    case notify
    case home
    case todo
}

enum ConfirmActionType {
    case boldActionLeft
    case boldActionRight
    case none
}

// MARK: View tag for animation T-5-1
enum HomeViewTag: Int {
    case header = 16_000
    case t51CellContent = 50_051
    case t51SBCardChargeCell = 50_052
    case collectionView = 50_001
    case tableView = 50_002
    case t8contentSnapShot = 50_081
    case t8headerSnapShot = 50_082
    case cardErrorView = 1_919
    case loadingView = 6_969
    case hm015Window = 15_000
    case containerHeaderViewHM001 = 51_001
    case containerShadowViewHM001 = 51_002
    case opacityView = 100_111
    case searchImageView = 38_38
}

// MARK: - SBWindowIndexes
enum SBWindowIndexes: Int {
    case home = 2_011
    case if027
    case if025
    case if020
    case help
    case toast
    case alert
    case biometric
    case sh002
    case maintenance
    case forcedUpdate
    case alertTop
    case coverApp // It must be always on TOP
    case forceMaintain
    case hm032
    
    // Sort by ascending
    static let topWindowSubViewIndexes: [SBWindowIndexes] = [.if027, .if025, .if020, .help, .toast, .biometric, .alert, .sh002, .maintenance, .forcedUpdate, .alertTop, .coverApp, .forceMaintain, .hm032]
    static let aboveAlertIndexes: [SBWindowIndexes] = [.maintenance, .forcedUpdate]
    
    static func isExistInTopWindow(tag: Int) -> Bool {
        return !topWindowSubViewIndexes.filter({ $0.tag == tag }).isEmpty
    }
    
    static func isAboveAlert(tag: Int) -> Bool {
        return !aboveAlertIndexes.filter({ $0.tag == tag }).isEmpty
    }
    
    var level: UIWindow.Level {
        switch self {
        case .forcedUpdate, .maintenance:
            return UIWindow.Level.alert + 1
        case .biometric, .alert:
            return UIWindow.Level.alert
        case .help, .if020, .if025:
            return UIWindow.Level.alert - 1
        default:
            return UIWindow.Level.normal
        }
    }
    
    var tag: Int {
        return self.rawValue
    }
}

// MARK: - ScreenTransitionType
enum ScreenTransitionType {
    case present
    case push
    case pushFromPresentedNavigation
}

// MARK: - Notification name
extension Notification.Name {
    static let commonReloadData = Notification.Name("commonReloadData")
    static let reloadDataFromWebviewAPL771 = Notification.Name("reloadDataFromWebviewAPL771")
    static let sb06ChangeUnreadNotification = Notification.Name("sb06ChangeUnreadNotification")
    static let sb06ReloadHomeAfterIF000Reload = Notification.Name("sb06ReloadHomeAfterIF000Reload")
    static let reloadHomeAfterHM004Reload = Notification.Name("reloadHomeAfterHM004Reload")
    
    static let sb00ContainerChangeBackground = Notification.Name("sb00ContainerChangeBackground")
    
    static let sb06notifyRefreshIF000 = Notification.Name("sb06notifyRefreshIF000")
    static let sb07todoChangeStateTodoButton = Notification.Name("sb07todoChangeStateTodoButton")
    static let sb07todoChangeStateIcon = Notification.Name("sb07todoChangeStateIcon")
    static let sb06ringImportantIcon = Notification.Name("sb06ringImportIcon")
    static let headerChangeIconColor = Notification.Name("headerChangeIconColor")
    
    static let sb01chargeUpdateAmountBPatternTotal = Notification.Name("sb01chargeUpdateAmountBPatternTotal")
    static let sb01chargeUpdateAmountBPatternSingle = Notification.Name("sb01chargeUpdateAmountBPatternSingle")
    static let sb01chargeUpdateAmountSPattern = Notification.Name("sb01chargeUpdateAmountSPattern")
    static let pullToRefreshVibrate = Notification.Name("pullToRefreshVibrate")
    static let sendPushSettings = Notification.Name("sendPushSettings")
    //APL-7: add notify case from HM-019
    static let sb01chargeUpdateAmountSubContract = Notification.Name("sb01chargeUpdateAmountSubContract")
    static let goToNN000FromLK006 = Notification.Name("goToNN000FromLK006")
    static let didSetChargeObjectInUniversalLinkService = Notification.Name("didSetChargeObjectInUniversalLinkService")
    static let didSetChargeObjectInHM000Presenter = Notification.Name("didSetChargeObjectInHM000Presenter")
    static let didSetValueUrlResponse = Notification.Name("didSetValueUrlResponse")
    static let moveToEgFromPushNoti = Notification.Name("moveToEgFromPushNoti")
    static let moveToPAScreenFromPushNoti = Notification.Name("moveToPAScreenFromPushNoti")
    static let moveToPT018FromPushNoti = Notification.Name("moveToPT018FromPushNoti")
    /// Maintain
    static let maintainRefreshHM000 = Notification.Name("maintainRefreshHM000")
    static let maintainRefreshHM001 = Notification.Name("maintainRefreshHM001")

    /// Denki
    static let sb23CheckedDenkiRegistCardHM000 = Notification.Name("sb23CheckedDenkiRegistCardHM000")
    static let sb23ReloadFromEL015View = Notification.Name("sb23ReloadFromEL015View")
    static let bl00805UpdateHiddenPowerAmount = Notification.Name("bl00805UpdateHiddenPowerAmount")
    static let el000updateDataCardElectricitySaving = Notification.Name("el000updateDataCardElectricitySaving")
    static let contractScreenDidAppearNotification = Notification.Name("didSelectElectricityContractNotification")
    static let didReadContractNotification = Notification.Name("didReadContractNotification")
    static let didChangeContractNotification = Notification.Name("didChangeContractNotification")
    static let didUpdateBlockInfoNotification = Notification.Name("didUpdateBlockInfoNotification")
    static let didPTREL000Notification = Notification.Name("didPTREL000Notification")
    static let didPTRHM001Notification = Notification.Name("didPTRHM001Notification")
    static let didPTRHM019Notification = Notification.Name("didPTRHM019Notification")
    static let didSetCardHM019Notification = Notification.Name("didSetCardHM019Notification")
    
    /// APL-1022 Soqos 193843
    static let didCancelBBContractNotification = Notification.Name("didCancelBBContractNotification")
    
    /// APL-265
    static let sc029ChangeAuthenState = Notification.Name("sc029ChangeAuthenState")
    static let sc029CowndownAuthen = Notification.Name("sc029CowndownAuthen")
    
    /// APL-538
    static let addCardToHM000 = Notification.Name("addCardToHM000")
    static let didChangeStatusHiddenPowerAmount = Notification.Name("didChangeStatusHiddenPowerAmount")
    
    /// APL-138
    static let handleActionOnSH002 = Notification.Name("handleActionOnSH002")
    static let handleShowPermissions = Notification.Name("handleShowPermissions")
    static let updatePpAutoExchangeFlg = Notification.Name("updatePpAutoExchangeFlg")
    
    /// APL-787
    static let didTapOnDialogAuthen = Notification.Name("didTapOnDialogAuthen")
    
    /// APL-3
    static let handleActionOnSH014 = Notification.Name("handleActionOnSH014")
    static let handleTapOnSH003 = Notification.Name("handleTapOnSH003")
    static let updateShopViewed = Notification.Name("updateShopViewed")
    
    /// APL-1268
    static let onTapButtonCancelOrRegisterShop = Notification.Name("onTapButtonCancelOrRegisterShop")
    
    /// APL-978
    static let reviewDialogCloseIF014 = Notification.Name("reviewDialogCloseIF014")
    
    /// APL-1020
    static let onChangeStateFaceVerification = Notification.Name("onChangeStateFaceVerification")
    static let onRequestSSOWebViewFromAuthenWeb = Notification.Name("onRequestSSOWebViewFromAuthenWeb")
    // APL-1020 TMPS-2123
    static let didChangeFacepassMutilineBlockHome = Notification.Name("didChangeFacepassMutilineBlockHome")
    
    // APL-7
    static let didUpdateDataWhenEditNN000 = Notification.Name("ditUpdateDataWhenEditNN000")
    static let didUpdateDataWhenEditNN002 = Notification.Name("ditUpdateDataWhenEditNN002")
    static let didUpdateDataFromLKWebView = Notification.Name("didUpdateDataFromLKWebView")
    static let reloadDataContractAfterDelete = Notification.Name("reloadDataContractAfterDelete")
    static let didEndSelectContract = Notification.Name("didEndSelectContract")
    static let removeObserverHM000ForLinkContract = Notification.Name("removeObserverHM000ForLinkContract")
    static let didShowNewLoadingView = Notification.Name("didShowNewLoadingView")

    // APF-1523
    static let reloadDataFromPS011 = Notification.Name("reloadDataFromPS011")
    static let reloadDataPS004 = Notification.Name("reloadDataPS004")
    /// APL-1467
    static let commonReloadDataPT030 = Notification.Name("commonReloadDataPT030")
    static let commonReloadDataFromPT043 = Notification.Name("commonReloadDataFromPT043")
    static let commonReloadHM000TPointAndPayPayCard = Notification.Name("commonReloadHM000TPointAndPayPayCard")
    
    // APL-1021
    static let onChangeColorLabelDT000 = Notification.Name("onChangeColorLabelDT000")
    static let commonCancelOMActionSheet = Notification.Name("commonCancelOMActionSheet")
    static let commonHideOMActionSheet = Notification.Name("commonHideOMActionSheet")
    static let reloadDataPS029Screen = Notification.Name("reloadDataPS029Screen")
    static let reloadDataGetSbIdInfoBySBSystemId = Notification.Name("reloadDataGetSbIdInfoBySBSystemId")
    /// APL-1467
    static let reloadML060 = Notification.Name("reloadML060")

    /// APL-1420
    static let commonUpdateSettingHome = Notification.Name("commonUpdateSettingHome")
    static let smailAuthenResponseDidCreated = Notification.Name("smailAuthenResponseDidCreated")

    // APL-1864
    static let AG010ScreenDidAppear = Notification.Name("AG010ScreenDidAppear")
    static let AG009ScreenDidAppear = Notification.Name("AG009ScreenDidAppear")
    
    // TMPS-2901
    static let maintainHm019 = Notification.Name("maintainHm019")
    static let maintainEL000 = Notification.Name("maintainEL000")
    
    // APL-11
    static let needCallAPISurvey = Notification.Name("needCallAPISurvey")
    static let didTapCloseMN000 = Notification.Name(rawValue: "didTapCloseMN000")
    
    // APL-1974
    static let panGestureMap = Notification.Name(rawValue: "panGestureMap")

    // APL-2027
    static let hideViewWhenDoneBiometric = Notification.Name("hideViewWhenDoneBiometric")
    static let reloadPayPayPointCard = Notification.Name("reloadPayPayPointCard")
    
    // APL-2854
    static let reloadNotifyCard = Notification.Name("reloadNotifyCard")
    
    // APL-12
    static let loggingToken =  Notification.Name(rawValue: "AG_NEED_NEW_ACCESS_TOKEN_BROADCAST_KEY")
    
    static let loggingExpiredToken =  Notification.Name(rawValue: "EXPIRED_TOKEN_NOTIFICATION")

    // APL-2198
    static let showDialogChangeMainContract = Notification.Name("showDialogChangeMainContract")
    
    // APL-2135
    static let updatePermissionDeviceLocation = Notification.Name("UpdatePermissionDeviceLocation")
    
    // APL-2335
    static let reloadSmartPhoneSuportHM001 = Notification.Name("reloadSmartPhoneSuportHM001")
    
    // APL-2422
    static let removeIF020WhenOpenNoti = Notification.Name("removeIF020WhenOpenNoti")
    static let isShowViewOtoku = Notification.Name("isShowViewOtoku")
    
    // APL-1022
    static let updateProcedureCard = Notification.Name("updateProcedureCard")
    static let updateProcedureCardFromBB135 = Notification.Name("updateProcedureCardFromBB135")
    static let reloadDataBB023 = Notification.Name("reloadDataBB023")
    static let reloadDataBB023032 = Notification.Name("reloadDataBB023032")
    static let reloadDataBB126 = Notification.Name("reloadDataBB126")
    static let popToBB023 = Notification.Name("popToBB023")
    static let updateAmountBB004 = Notification.Name("updateAmountBB004")
    static let reloadDataGetContactInfoBB023 = Notification.Name("reloadDataGetContactInfoBB023")
    static let addCardBB000ToHM000 = Notification.Name("addCardBB000ToHM000")
    
    static let countNotificationAlert = Notification.Name("countNotificationAlert")
    static let newNotifyAlert = Notification.Name("newNotifyAlert")
    static let moveFrameErrorToastKey = Notification.Name("moveFrameErrorToastKey")
    static let updateNotifyList = Notification.Name("updateNotifyList")

    // APL-2831
    static let removeBirthdayNotifyCard = Notification.Name("removeBirthdayNotifyCard")
    // BUG-128
    static let reloadEL000RealContract = Notification.Name("reloadEL000RealContract")
    static let reloadEL000FakeContract = Notification.Name("reloadEL000FakeContract")
}

enum MarginConstantPercent: CGFloat {
    case zeroPointSix = 0.006
    case one = 0.01
    case onePointSix = 0.016
    case twoPointOne = 0.021
    case twoPointFour = 0.024
    case threePointTwo = 0.032
    case four = 0.04
    case six = 0.06
}

enum MaintenancePattern {
    case pattern1 /// Display title + message + date
    case pattern2 /// Display title + message
    case pattern3 /// Display title + date
    case pattern4 /// Display title
    case pattern5 /// Display error
}

//struct CardMaintenanceDto {
//    var title: String = String.empty
//    var subTitle: String = String.empty
//    var dateTitle: String = String.empty
//    var startDateValue: String = String.empty
//    var endDateValue: String = String.empty
//    
//    static func createData(fromDto data: GetBlockInfoResponseInfoListDto?) -> CardMaintenanceDto {
//        let title = data?.blockTitle ?? String.empty
//        let message = data?.blockMessage ?? String.empty
//        let dateTitle = Constant.mam012MaintainanceTitleTime.localized
//        let startDate = data?.effectiveStartDate ?? String.empty
//        let endDate = data?.effectiveEndDate ?? String.empty
//        
//        let maintainData = CardMaintenanceDto(title: title,
//                                              subTitle: message,
//                                              dateTitle: dateTitle,
//                                              startDateValue: startDate,
//                                              endDateValue: endDate)
//        return maintainData
//    }
//    
//    static func createData(title: String, message: String, startDate: String, endDate: String) -> CardMaintenanceDto {
//        let title = title
//        let message = message
//        let dateTitle = title
//        let startDate = startDate
//        let endDate = endDate
//        
//        let maintainData = CardMaintenanceDto(title: title,
//                                              subTitle: message,
//                                              dateTitle: dateTitle,
//                                              startDateValue: startDate,
//                                              endDateValue: endDate)
//        return maintainData
//    }
//    
//    static func checkPatternDisplay(data: CardMaintenanceDto) -> MaintenancePattern {
//
//        let isTitleEmpty = data.title.isEmpty
//        let isDescriptionEmpty = data.subTitle.isEmpty
//        let isEndDateEmpty = data.endDateValue.isEmpty
//        
//        /// APL-309: start date is not important for show/hide item (check maintain is not in here)
//        var maintenancePattern: MaintenancePattern = .pattern1
//        if !isTitleEmpty && !isDescriptionEmpty && !isEndDateEmpty {
//            maintenancePattern = .pattern1
//        } else if !isTitleEmpty && !isDescriptionEmpty && isEndDateEmpty {
//            maintenancePattern = .pattern2
//        } else if !isTitleEmpty && isDescriptionEmpty && !isEndDateEmpty {
//            maintenancePattern = .pattern3
//        } else if !isTitleEmpty && isDescriptionEmpty && isEndDateEmpty {
//            maintenancePattern = .pattern4
//        } else {
//            maintenancePattern = .pattern5
//        }
//        return maintenancePattern
//    }
//}

struct SBAnimationDuration {
    public static let T4: TimeInterval = 0.4
    public static let T6: TimeInterval = 0.3
    public static let T7: TimeInterval = 0.5
    public static let V12: TimeInterval = 0.3
}

struct App {
    static let ratio = UIScreen.main.bounds.width / 375
}

enum ButtonType: String {
    case browser
    case screen
    case none
}
