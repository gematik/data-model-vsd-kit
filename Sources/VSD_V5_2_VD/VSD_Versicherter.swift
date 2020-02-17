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
public class VSD_Versicherter {
    
    public static let namespacePrefix: String? = "VSD"
    public static let namespaceUri: String? = "http://ws.gematik.de/fa/vsdm/vsd/v5.2"
    
    // attributes:
    
    // elements:
    public var Versicherungsschutz: VSD_Versicherungsschutz
    public var Zusatzinfos: VSD_Zusatzinfos
    
    // default Constructor
    public init() {
        
        self.Versicherungsschutz = VSD_Versicherungsschutz()
        self.Zusatzinfos = VSD_Zusatzinfos()
        
    }
    
    // copy Constructor
    public init(_ _VSD_Versicherter: VSD_Versicherter ) {
        
        self.Versicherungsschutz = _VSD_Versicherter.Versicherungsschutz
        self.Zusatzinfos = _VSD_Versicherter.Zusatzinfos
        
    }
    
    public class func deserialize(_ infoset: Infoset) -> VSD_Versicherter {
        
        let _VSD_Versicherter = VSD_Versicherter()
        
        let uriVersicherungsschutz = VSD_Versicherungsschutz.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameVersicherungsschutz = QName("Versicherungsschutz", uri: uriVersicherungsschutz)
        _VSD_Versicherter.Versicherungsschutz = VSD_Versicherungsschutz.deserialize(infoset.select(qNameVersicherungsschutz))
        
        let uriZusatzinfos = VSD_Zusatzinfos.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameZusatzinfos = QName("Zusatzinfos", uri: uriZusatzinfos)
        _VSD_Versicherter.Zusatzinfos = VSD_Zusatzinfos.deserialize(infoset.select(qNameZusatzinfos))
        
        return _VSD_Versicherter
    }
}

extension Optional where Wrapped == VSD_Versicherter {
    public static func deserialize(_ infoset: Infoset) -> VSD_Versicherter? {
        if infoset.count == 0 {
            return nil
        } else {
            return VSD_Versicherter.deserialize(infoset)
        }
    }
}

extension Array where Element: VSD_Versicherter {
    public var namespaceUri: String? {
        get {
            return VSD_Versicherter.namespaceUri
        }
    }
    
    public static func deserialize(_ infoset: Infoset) -> [VSD_Versicherter] {
        return infoset.map { (element: Infoset) in
        VSD_Versicherter.deserialize(element)
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
