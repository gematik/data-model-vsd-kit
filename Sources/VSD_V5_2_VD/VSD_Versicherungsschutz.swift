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
public class VSD_Versicherungsschutz {
    
    public static let namespacePrefix: String? = "VSD"
    public static let namespaceUri: String? = "http://ws.gematik.de/fa/vsdm/vsd/v5.2"
    
    // attributes:
    
    // elements:
    public var Beginn: String
    public var Ende: String?
    public var Kostentraeger: VSD_Kostentraeger
    
    // default Constructor
    public init() {
        
        self.Beginn = String()
        self.Ende = nil
        self.Kostentraeger = VSD_Kostentraeger()
        
    }
    
    // copy Constructor
    public init(_ _VSD_Versicherungsschutz: VSD_Versicherungsschutz ) {
        
        self.Beginn = _VSD_Versicherungsschutz.Beginn
        self.Ende = _VSD_Versicherungsschutz.Ende
        self.Kostentraeger = _VSD_Versicherungsschutz.Kostentraeger
        
    }
    
    public class func deserialize(_ infoset: Infoset) -> VSD_Versicherungsschutz {
        
        let _VSD_Versicherungsschutz = VSD_Versicherungsschutz()
        
        let uriBeginn = String.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameBeginn = QName("Beginn", uri: uriBeginn)
        _VSD_Versicherungsschutz.Beginn = String.deserialize(infoset.select(qNameBeginn))
        
        let uriEnde = String.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameEnde = QName("Ende", uri: uriEnde)
        _VSD_Versicherungsschutz.Ende = String?.deserialize(infoset.select(qNameEnde))
        
        let uriKostentraeger = VSD_Kostentraeger.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameKostentraeger = QName("Kostentraeger", uri: uriKostentraeger)
        _VSD_Versicherungsschutz.Kostentraeger = VSD_Kostentraeger.deserialize(infoset.select(qNameKostentraeger))
        
        return _VSD_Versicherungsschutz
    }
}

extension Optional where Wrapped == VSD_Versicherungsschutz {
    public static func deserialize(_ infoset: Infoset) -> VSD_Versicherungsschutz? {
        if infoset.count == 0 {
            return nil
        } else {
            return VSD_Versicherungsschutz.deserialize(infoset)
        }
    }
}

extension Array where Element: VSD_Versicherungsschutz {
    public var namespaceUri: String? {
        get {
            return VSD_Versicherungsschutz.namespaceUri
        }
    }
    
    public static func deserialize(_ infoset: Infoset) -> [VSD_Versicherungsschutz] {
        return infoset.map { (element: Infoset) in
        VSD_Versicherungsschutz.deserialize(element)
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

