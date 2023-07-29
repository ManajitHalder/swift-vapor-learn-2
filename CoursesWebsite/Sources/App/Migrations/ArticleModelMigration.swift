//
// Created by Manajit Halder
// For Project  on 29/07/23
// Using Swift 5.0 on MacOS 13.4
// 

import Foundation
import Vapor
import Fluent

struct ArticleModelMigration: AsyncMigration {
    let schema = ArticleModel.schema.self
    let keys = ArticleModel.FieldKeys.self
    
    func prepare(on database: Database) async throws {
        try await database.schema(schema)
            .id()
            .field(keys.title, .string)
            .field(keys.slug, .string)
            .field(keys.excerp, .string)
            .field(keys.content, .string)
            .field(keys.guide, .uuid)
            .field(keys.headerImage, .string)
            .field(keys.author, .string)
            .field(keys.status, .string)
            .field(keys.price, .string)
            .field(keys.role, .string)
            .field(keys.createdAt, .datetime)
            .field(keys.updatedAt, .datetime)
            .field(keys.publishDate, .datetime)
            .field(keys.tags, .array(of: .string))
            .create()
    }
    
    func revert(on database: Database) async throws {
        try await database.schema(schema).delete()
    }
}
