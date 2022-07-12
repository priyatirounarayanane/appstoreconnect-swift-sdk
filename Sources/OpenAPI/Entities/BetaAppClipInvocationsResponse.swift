// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct BetaAppClipInvocationsResponse: Codable {
	public var data: [BetaAppClipInvocation]
	public var included: [BetaAppClipInvocationLocalization]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public init(data: [BetaAppClipInvocation], included: [BetaAppClipInvocationLocalization]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}
}