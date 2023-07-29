//
// Created by Manajit Halder
// For Project  on 29/07/23
// Using Swift 5.0 on MacOS 13.4
// 

import Foundation
import Vapor
import Fluent

struct GuideModelMigration: AsyncMigration {
    let schema = GuideModel.schema.self
    let keys = GuideModel.FieldKeys.self
    
    func prepare(on database: Database) async throws {
        try await database.schema(schema)
            .id()
            .field(keys.title, .string)
            .field(keys.description, .string)
            .field(keys.headerImage, .string)
            .field(keys.price, .string)
            .field(keys.status, .string)
            .field(keys.slug, .string)
            .field(keys.tags, .array(of: .string))
            .field(keys.publishDate, .datetime)
            .field(keys.createdAt, .datetime)
            .field(keys.updatedAt, .datetime)
            .field(keys.author, .string)
            .create()
    }
    
    func revert(on database: Database) async throws {
        try await database.schema(schema).delete()
    }
}
