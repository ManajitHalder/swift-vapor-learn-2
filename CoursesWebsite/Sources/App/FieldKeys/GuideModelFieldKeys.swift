//
// Created by Manajit Halder
// For Project  on 28/07/23
// Using Swift 5.0 on MacOS 13.4
// 

import Foundation
import Vapor
import Fluent

extension GuideModel {
    struct FieldKeys {
        static var title: FieldKey {"title"}
        static var description: FieldKey {"description"}
        static var headerImage: FieldKey {"headerImage"}
        static var price: FieldKey {"price"}
        static var status: FieldKey {"status"}
        static var slug: FieldKey {"slug"}
        static var tags: FieldKey {"tags"}
        static var publishDate: FieldKey {"publishDate"}
        static var createdAt: FieldKey {"createdAt"}
        static var updatedAt: FieldKey {"updatedAt"}
        static var author: FieldKey {"author"}
    }
}
