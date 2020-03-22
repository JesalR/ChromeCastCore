//
//  CASTV2Protocol.swift
//  ChromeCastCore
//
//  Created by Guilherme Rambo on 21/10/16.
//  Copyright © 2016 Guilherme Rambo. All rights reserved.
//

import Foundation

enum CastNamespace: String {
    case connection = "urn:x-cast:com.google.cast.tp.connection"
    case heartbeat = "urn:x-cast:com.google.cast.tp.heartbeat"
    case receiver = "urn:x-cast:com.google.cast.receiver"
    case media = "urn:x-cast:com.google.cast.media"
}

enum CastMessageType: String, Codable {
    case ping = "PING"
    case pong = "PONG"
    case connect = "CONNECT"
    case close = "CLOSE"
    case status = "RECEIVER_STATUS"
    case launch = "LAUNCH"
    case stop = "STOP"
    case load = "LOAD"
    case pause = "PAUSE"
    case play = "PLAY"
    case seek = "SEEK"
    case setVolume = "SET_VOLUME"
    case setDeviceVolume = "SET_DEVICE_VOLUME"
    case statusRequest = "GET_STATUS"
    case availableApps = "GET_APP_AVAILABILITY"
    case mediaStatus = "MEDIA_STATUS"
    case getDeviceInfo = "GET_DEVICE_INFO"
    case deviceInfo = "DEVICE_INFO"
    case getDeviceConfig = "eureka_info"
    case setDeviceConfig = "set_eureka_info"
    case getAppDeviceId = "get_app_device_id"
    case multizoneStatus = "MULTIZONE_STATUS"
    case deviceAdded = "DEVICE_ADDED"
    case deviceUpdated = "DEVICE_UPDATED"
    case deviceRemoved = "DEVICE_REMOVED"
    case invalidRequest = "INVALID_REQUEST"
    case mdxSessionStatus = "mdxSessionStatus"
}

extension CastMessageType {
    
    var needsRequestId: Bool {
        switch self {
        case .launch, .load, .statusRequest: return true
        default: return false
        }
    }
    
}

struct CastJSONPayloadKeys {
    static let type = "type"
    static let requestId = "requestId"
    static let status = "status"
    static let applications = "applications"
    static let appId = "appId"
    static let displayName = "displayName"
    static let sessionId = "sessionId"
    static let transportId = "transportId"
    static let statusText = "statusText"
    static let isIdleScreen = "isIdleScreen"
    static let namespaces = "namespaces"
    static let volume = "volume"
    static let controlType = "controlType"
    static let level = "level"
    static let muted = "muted"
    static let mediaSessionId = "mediaSessionId"
    static let availability = "availability"
    static let name = "name"
    static let currentTime = "currentTime"
    static let media = "media"
    static let repeatMode = "repeatMode"
    static let autoplay = "autoplay"
    static let contentId = "contentId"
    static let contentType = "contentType"
    static let streamType = "streamType"
    static let metadata = "metadata"
    static let metadataType = "metadataType"
    static let title = "title"
    static let images = "images"
    static let url = "url"
    static let activeTrackIds = "activeTrackIds"
    static let playbackRate = "playbackRate"
    static let playerState = "playerState"
    static let deviceId = "deviceId"
    static let device = "device"
    static let devices = "devices"
    static let capabilities = "capabilities"
}

struct CastConstants {
    static let senderName = "sender-0"
    static let receiverName = "receiver-0"
    static let transportName = "transport-0"
}
