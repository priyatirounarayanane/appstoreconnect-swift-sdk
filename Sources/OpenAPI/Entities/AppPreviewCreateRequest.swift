// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppPreviewCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case appPreviews
		}

		public struct Attributes: Codable {
			public var fileSize: Int
			public var fileName: String
			public var previewFrameTimeCode: String?
			public var mimeType: String?

			public init(fileSize: Int, fileName: String, previewFrameTimeCode: String? = nil, mimeType: String? = nil) {
				self.fileSize = fileSize
				self.fileName = fileName
				self.previewFrameTimeCode = previewFrameTimeCode
				self.mimeType = mimeType
			}
		}

		public struct Relationships: Codable {
			public var appPreviewSet: AppPreviewSet

			public struct AppPreviewSet: Codable {
				public var data: Data

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appPreviewSets
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}
				}

				public init(data: Data) {
					self.data = data
				}
			}

			public init(appPreviewSet: AppPreviewSet) {
				self.appPreviewSet = appPreviewSet
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}
	}

	public init(data: Data) {
		self.data = data
	}
}