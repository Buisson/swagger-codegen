//
// ReadOnlyFirst.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ReadOnlyFirst: NSObject, NSCoding ,JSONEncodable {

    public var bar: String?
    public var baz: String?

    public override init() {}


    public required init?(coder aDecoder: NSCoder){
        self.bar = aDecoder.decodeObject(forKey: "bar") as? String
        self.baz = aDecoder.decodeObject(forKey: "baz") as? String
    }
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["bar"] = self.bar
        nillableDictionary["baz"] = self.baz

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }

    public func encode(with aCoder: NSCoder) {
        aCoder.encode(bar, forKey: "bar")
        aCoder.encode(baz, forKey: "baz")
    }
}
