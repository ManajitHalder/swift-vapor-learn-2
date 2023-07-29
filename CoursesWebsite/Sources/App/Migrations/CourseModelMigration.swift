//
// Created by Manajit Halder
// For Project  on 29/07/23
// Using Swift 5.0 on MacOS 13.4
// 

import Foundation
import Vapor
import Fluent

struct CourseModelMigration: AsyncMigration {
    let schema = CourseModel.schema.self
    let keys = CourseModel.FieldKeys.self
    
    func prepare(on database: Database) async throws {
        try await database.schema(schema)
            .id()
            .field(keys.title, .string)
            .field(keys.slug, .string)
            .field(keys.tags, .array(of: .string))
            .field(keys.description, .string)
            .field(keys.status, .string)
            .field(keys.price, .string)
            .field(keys.headerImage, .string)
            .field(keys.article, .string)
            .field(keys.topHexColor, .string)
            .field(keys.bottomHexColor, .string)
            .field(keys.syllabus, .string)
            .field(keys.assets, .string)
            .field(keys.author, .string)
            .field(keys.createdAt, .datetime)
            .field(keys.updatedAt, .datetime)
            .field(keys.publishDate, .datetime)
            .unique(on: keys.syllabus)
            .unique(on: keys.assets)
            .create()
    }
    
    func revert(on database: Database) async throws {
        try await database.schema(schema).delete()
    }
}
