//
// Created by Manajit Halder
// For Project  on 28/07/23
// Using Swift 5.0 on MacOS 13.4
// 

import Foundation
import Vapor
import Fluent

extension CourseModel {
    struct FieldKeys {
        static var title: FieldKey {"title"}
        static var slug: FieldKey {"slug"}
        static var tags: FieldKey {"tags"}
        static var description: FieldKey {"description"}
        static var status: FieldKey {"status"}
        static var price: FieldKey {"price"}
        static var headerImage: FieldKey {"headerImage"}
        static var article: FieldKey {"article"}
        static var topHexColor: FieldKey {"topHexColor"}
        static var bottomHexColor: FieldKey {"bottomHexColor"}
        static var syllabus: FieldKey {"syllabus"}
        static var assets: FieldKey {"assets"}
        static var author: FieldKey {"author"}
        static var createdAt: FieldKey {"createdAt"}
        static var updatedAt: FieldKey {"updatedAt"}
        static var publishDate: FieldKey {"publishDate"}
    }
}
