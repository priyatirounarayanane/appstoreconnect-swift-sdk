// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct CiBranchStartCondition: Codable {
	public var source: CiBranchPatterns?
	public var filesAndFoldersRule: CiFilesAndFoldersRule?
	public var isAutoCancel: Bool?

	public init(source: CiBranchPatterns? = nil, filesAndFoldersRule: CiFilesAndFoldersRule? = nil, isAutoCancel: Bool? = nil) {
		self.source = source
		self.filesAndFoldersRule = filesAndFoldersRule
		self.isAutoCancel = isAutoCancel
	}

	private enum CodingKeys: String, CodingKey {
		case source
		case filesAndFoldersRule
		case isAutoCancel = "autoCancel"
	}
}