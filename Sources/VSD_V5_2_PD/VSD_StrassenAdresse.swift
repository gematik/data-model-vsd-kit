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
public class VSD_StrassenAdresse {
    
    public static let namespacePrefix: String? = "VSD"
    public static let namespaceUri: String? = "http://ws.gematik.de/fa/vsdm/vsd/v5.2"
    
    // attributes:
    
    // elements:
    public var Postleitzahl: String?
    public var Ort: String
    public var Land: VSD_LandTypeType
    public var Strasse: String?
    public var Hausnummer: String?
    public var Anschriftenzusatz: String?
    
    // default Constructor
    public init() {
        
        self.Postleitzahl = nil
        self.Ort = String()
        self.Land = VSD_LandTypeType()
        self.Strasse = nil
        self.Hausnummer = nil
        self.Anschriftenzusatz = nil
        
    }
    
    // copy Constructor
    public init(_ _VSD_StrassenAdresse: VSD_StrassenAdresse ) {
        
        self.Postleitzahl = _VSD_StrassenAdresse.Postleitzahl
        self.Ort = _VSD_StrassenAdresse.Ort
        self.Land = _VSD_StrassenAdresse.Land
        self.Strasse = _VSD_StrassenAdresse.Strasse
        self.Hausnummer = _VSD_StrassenAdresse.Hausnummer
        self.Anschriftenzusatz = _VSD_StrassenAdresse.Anschriftenzusatz
        
    }
    
    public class func deserialize(_ infoset: Infoset) -> VSD_StrassenAdresse {
        
        let _VSD_StrassenAdresse = VSD_StrassenAdresse()
        
        let uriPostleitzahl = String.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNamePostleitzahl = QName("Postleitzahl", uri: uriPostleitzahl)
        _VSD_StrassenAdresse.Postleitzahl = String?.deserialize(infoset.select(qNamePostleitzahl))
        
        let uriOrt = String.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameOrt = QName("Ort", uri: uriOrt)
        _VSD_StrassenAdresse.Ort = String.deserialize(infoset.select(qNameOrt))
        
        let uriLand = VSD_LandTypeType.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameLand = QName("Land", uri: uriLand)
        _VSD_StrassenAdresse.Land = VSD_LandTypeType.deserialize(infoset.select(qNameLand))
        
        let uriStrasse = String.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameStrasse = QName("Strasse", uri: uriStrasse)
        _VSD_StrassenAdresse.Strasse = String?.deserialize(infoset.select(qNameStrasse))
        
        let uriHausnummer = String.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameHausnummer = QName("Hausnummer", uri: uriHausnummer)
        _VSD_StrassenAdresse.Hausnummer = String?.deserialize(infoset.select(qNameHausnummer))
        
        let uriAnschriftenzusatz = String.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameAnschriftenzusatz = QName("Anschriftenzusatz", uri: uriAnschriftenzusatz)
        _VSD_StrassenAdresse.Anschriftenzusatz = String?.deserialize(infoset.select(qNameAnschriftenzusatz))
        
        return _VSD_StrassenAdresse
    }
}

extension Optional where Wrapped == VSD_StrassenAdresse {
    public static func deserialize(_ infoset: Infoset) -> VSD_StrassenAdresse? {
        if infoset.count == 0 {
            return nil
        } else {
            return VSD_StrassenAdresse.deserialize(infoset)
        }
    }
}

extension Array where Element: VSD_StrassenAdresse {
    public var namespaceUri: String? {
        get {
            return VSD_StrassenAdresse.namespaceUri
        }
    }
    
    public static func deserialize(_ infoset: Infoset) -> [VSD_StrassenAdresse] {
        return infoset.map { (element: Infoset) in
        VSD_StrassenAdresse.deserialize(element)
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

