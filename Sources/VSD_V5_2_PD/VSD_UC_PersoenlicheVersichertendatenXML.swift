//
//  Copyright (c) 2020 gematik GmbH
//  
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//  
//     http://www.apache.org/licenses/LICENSE-2.0
//  
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

//
//  This file was generated from an xsd file and represents a simple or complex type of it.
//  Generated by a fork of xsd2cocoa (see https://github.com/Daij-Djan/xsd2cocoa) and a specified custom transform template.
//

import Foundation
import XMLTools

// MARK: - Generated file, do not edit. Any edits of this file will be overwritten and thus discarded
public class VSD_UC_PersoenlicheVersichertendatenXML {
    
    public static let namespacePrefix: String? = "VSD"
    public static let namespaceUri: String? = "http://ws.gematik.de/fa/vsdm/vsd/v5.2"
    
    // attributes:
    public var CDM_VERSION: String
    
    // elements:
    public var Versicherter: VSD_Versicherter
    
    // default Constructor
    public init() {
        
        self.CDM_VERSION = String()
        
        self.Versicherter = VSD_Versicherter()
        
    }
    
    // copy Constructor
    public init(_ _VSD_UC_PersoenlicheVersichertendatenXML: VSD_UC_PersoenlicheVersichertendatenXML ) {
        
        self.CDM_VERSION = _VSD_UC_PersoenlicheVersichertendatenXML.CDM_VERSION
        
        self.Versicherter = _VSD_UC_PersoenlicheVersichertendatenXML.Versicherter
        
    }
    
    public class func deserialize(_ infoset: Infoset) -> VSD_UC_PersoenlicheVersichertendatenXML {
        
        let _VSD_UC_PersoenlicheVersichertendatenXML = VSD_UC_PersoenlicheVersichertendatenXML()
        
        _VSD_UC_PersoenlicheVersichertendatenXML.CDM_VERSION = String.deserialize(infoset.attr("CDM_VERSION"))
        
        let uriVersicherter = VSD_Versicherter.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameVersicherter = QName("Versicherter", uri: uriVersicherter)
        _VSD_UC_PersoenlicheVersichertendatenXML.Versicherter = VSD_Versicherter.deserialize(infoset.select(qNameVersicherter))
        
        return _VSD_UC_PersoenlicheVersichertendatenXML
    }
}

extension Optional where Wrapped == VSD_UC_PersoenlicheVersichertendatenXML {
    public static func deserialize(_ infoset: Infoset) -> VSD_UC_PersoenlicheVersichertendatenXML? {
        if infoset.count == 0 {
            return nil
        } else {
            return VSD_UC_PersoenlicheVersichertendatenXML.deserialize(infoset)
        }
    }
}

extension Array where Element: VSD_UC_PersoenlicheVersichertendatenXML {
    public var namespaceUri: String? {
        get {
            return VSD_UC_PersoenlicheVersichertendatenXML.namespaceUri
        }
    }
    
    public static func deserialize(_ infoset: Infoset) -> [VSD_UC_PersoenlicheVersichertendatenXML] {
        return infoset.map { (element: Infoset) in
        VSD_UC_PersoenlicheVersichertendatenXML.deserialize(element)
    }
}
}

// utility functions
fileprivate extension String {
    static let namespacePrefix: String? = nil
    static let namespaceUri: String? = nil
    
    static func deserialize(_ infoset: Infoset) -> String {
        return infoset.text
    }
}

fileprivate extension Optional where Wrapped == String {
    static func deserialize(_ infoset: Infoset) -> String? {
        if infoset.count == 0 {
            return nil
        } else {
            return String.deserialize(infoset)
        }
    }
}

fileprivate extension Int {
    static let namespacePrefix: String? = nil
    static let namespaceUri: String? = nil
    
    static func deserialize(_ infoset: Infoset) -> Int {
        guard let ret = Int(infoset.text) else {
            return 0
        }
        return ret
    }
}

fileprivate extension Optional where Wrapped == Int {
    static func deserialize(_ infoset: Infoset) -> Int? {
        if infoset.count == 0 {
            return nil
        } else {
            return Int.deserialize(infoset)
        }
    }
}

fileprivate extension Double {
    static let namespacePrefix: String? = nil
    static let namespaceUri: String? = nil
    
    static func deserialize(_ infoset: Infoset) -> Double {
        guard let ret = Double(infoset.text) else {
            return 0
        }
        return ret
    }
}

fileprivate extension Optional where Wrapped == Double {
    static func deserialize(_ infoset: Infoset) -> Double? {
        if infoset.count == 0 {
            return nil
        } else {
            return Double.deserialize(infoset)
        }
    }
}

