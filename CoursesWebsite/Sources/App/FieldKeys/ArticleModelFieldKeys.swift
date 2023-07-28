//
// Created by Manajit Halder
// For Project  on 28/07/23
// Using Swift 5.0 on MacOS 13.4
// 

import Foundation
import Vapor
import Fluent

extension ArticleModel {
    struct FieldKeys {
        static var title: FieldKey {"title"}
        static var slug: FieldKey {"slug"}
        static var excerp: FieldKey {"excerp"}
        static var content: FieldKey {"content"}
        static var guide: FieldKey {"guide"}
        static var headerImage: FieldKey {"headerImage"}
        static var author: FieldKey {"author"}
        static var status: FieldKey {"status"}
        static var price: FieldKey {"price"}
        static var role: FieldKey {"role"}
        static var createdAt: FieldKey {"createdAt"}
        static var updatedAt: FieldKey {"updatedAt"}
        static var publishDate: FieldKey {"publishDate"}
        static var tags: FieldKey {"tags"}
    }
}
