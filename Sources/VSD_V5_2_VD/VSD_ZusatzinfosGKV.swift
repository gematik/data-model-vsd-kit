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
public class VSD_ZusatzinfosGKV {
    
    public static let namespacePrefix: String? = "VSD"
    public static let namespaceUri: String? = "http://ws.gematik.de/fa/vsdm/vsd/v5.2"
    
    // attributes:
    
    // elements:
    public var Versichertenart: String
    public var Zusatzinfos_Abrechnung_GKV: VSD_Zusatzinfos_Abrechnung_GKV
    
    // default Constructor
    public init() {
        
        self.Versichertenart = String()
        self.Zusatzinfos_Abrechnung_GKV = VSD_Zusatzinfos_Abrechnung_GKV()
        
    }
    
    // copy Constructor
    public init(_ _VSD_ZusatzinfosGKV: VSD_ZusatzinfosGKV ) {
        
        self.Versichertenart = _VSD_ZusatzinfosGKV.Versichertenart
        self.Zusatzinfos_Abrechnung_GKV = _VSD_ZusatzinfosGKV.Zusatzinfos_Abrechnung_GKV
        
    }
    
    public class func deserialize(_ infoset: Infoset) -> VSD_ZusatzinfosGKV {
        
        let _VSD_ZusatzinfosGKV = VSD_ZusatzinfosGKV()
        
        let uriVersichertenart = String.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameVersichertenart = QName("Versichertenart", uri: uriVersichertenart)
        _VSD_ZusatzinfosGKV.Versichertenart = String.deserialize(infoset.select(qNameVersichertenart))
        
        let uriZusatzinfos_Abrechnung_GKV = VSD_Zusatzinfos_Abrechnung_GKV.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameZusatzinfos_Abrechnung_GKV = QName("Zusatzinfos_Abrechnung_GKV", uri: uriZusatzinfos_Abrechnung_GKV)
        _VSD_ZusatzinfosGKV.Zusatzinfos_Abrechnung_GKV = VSD_Zusatzinfos_Abrechnung_GKV.deserialize(infoset.select(qNameZusatzinfos_Abrechnung_GKV))
        
        return _VSD_ZusatzinfosGKV
    }
}

extension Optional where Wrapped == VSD_ZusatzinfosGKV {
    public static func deserialize(_ infoset: Infoset) -> VSD_ZusatzinfosGKV? {
        if infoset.count == 0 {
            return nil
        } else {
            return VSD_ZusatzinfosGKV.deserialize(infoset)
        }
    }
}

extension Array where Element: VSD_ZusatzinfosGKV {
    public var namespaceUri: String? {
        get {
            return VSD_ZusatzinfosGKV.namespaceUri
        }
    }
    
    public static func deserialize(_ infoset: Infoset) -> [VSD_ZusatzinfosGKV] {
        return infoset.map { (element: Infoset) in
        VSD_ZusatzinfosGKV.deserialize(element)
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

