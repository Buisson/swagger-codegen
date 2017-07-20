//
// Return.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Model for testing reserved words */
open class Return: NSObject, NSCoding ,JSONEncodable {

    public var _return: Int32?


    public init(_return: Int32?=nil) {
        self._return = _return
    }

    public required init?(coder aDecoder: NSCoder){
        self._return = aDecoder.decodeObject(forKey: "_return") as? Int32
    }
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["return"] = self._return?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }

    public func encode(with aCoder: NSCoder) {
        aCoder.encode(_return, forKey: "_return")
    }
}
