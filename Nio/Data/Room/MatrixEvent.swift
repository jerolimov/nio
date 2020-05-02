import Foundation
import SwiftMatrixSDK

// Implementation heavily inspired by [Messagerie](https://github.com/manuroe/messagerie).

struct MatrixEvent: Identifiable {
    var id: String {
        eventId
    }

    var eventId: String

    var sender: String
    var senderDisplayName: String
    var senderAvatar: String?

    var isIncoming: Bool = true

    var content: Content

    var timestamp: Date
}

extension MatrixEvent {
    enum Content {
        case text(String)
        case image(Image)

        case unsupported(String)

        struct Image {
            let url: String
            let size: CGSize
        }
    }
}
