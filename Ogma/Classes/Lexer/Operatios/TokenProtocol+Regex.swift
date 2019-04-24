//
//  TokenProtocol+Regex.swift
//  Ogma
//
//  Created by Mathias Quintero on 4/23/19.
//

import Foundation

extension TokenProtocol {

    public func generator(with pattern: String) -> AnyTokenGenerator<Self> {
        return StandardRegexTokenGenerator(pattern: pattern, token: self).any()
    }

}

private struct StandardRegexTokenGenerator<Token: TokenProtocol>: RegexTokenGenerator {
    let pattern: String
    let token: Token

    func token(from matched: String) throws -> Token? {
        return token
    }
}