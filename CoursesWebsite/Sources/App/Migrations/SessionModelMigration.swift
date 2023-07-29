//
// Created by Manajit Halder
// For Project  on 29/07/23
// Using Swift 5.0 on MacOS 13.4
// 

import Foundation
import Vapor
import Fluent

struct SessionModelMigration: AsyncMigration {
    let schema = SessionModel.schema.self
    let keys = SessionModel.FieldKeys.self
    
    func prepare(on database: Database) async throws {
        try await database.schema(schema)
            .id()
            .field(keys.title, .string)
            .field(keys.mp4URL, .string)
            .field(keys.hlsURL, .string)
            .field(keys.createdAt, .datetime)
            .field(keys.updatedAt, .datetime)
            .field(keys.publishDate, .datetime)
            .field(keys.status, .string)
            .field(keys.price, .string)
            .field(keys.article, .string)
            .field(keys.course, .uuid)
            .field(keys.slug, .string)
            .unique(on: keys.mp4URL)
            .unique(on: keys.hlsURL)
            .create()
    }
    
    func revert(on database: Database) async throws {
        try await database.schema(schema).delete()
    }
}
