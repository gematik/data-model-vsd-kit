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
public class VSD_Selektivvertraege {
    
    public static let namespacePrefix: String? = "VSD"
    public static let namespaceUri: String? = "http://ws.gematik.de/fa/vsdm/vsd/v5.2"
    
    // attributes:
    
    // elements:
    public var Aerztlich: Int
    public var Zahnaerztlich: Int
    public var Art: String?
    
    // default Constructor
    public init() {
        
        self.Aerztlich = Int()
        self.Zahnaerztlich = Int()
        self.Art = nil
        
    }
    
    // copy Constructor
    public init(_ _VSD_Selektivvertraege: VSD_Selektivvertraege ) {
        
        self.Aerztlich = _VSD_Selektivvertraege.Aerztlich
        self.Zahnaerztlich = _VSD_Selektivvertraege.Zahnaerztlich
        self.Art = _VSD_Selektivvertraege.Art
        
    }
    
    public class func deserialize(_ infoset: Infoset) -> VSD_Selektivvertraege {
        
        let _VSD_Selektivvertraege = VSD_Selektivvertraege()
        
        let uriAerztlich = Int.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameAerztlich = QName("Aerztlich", uri: uriAerztlich)
        _VSD_Selektivvertraege.Aerztlich = Int.deserialize(infoset.select(qNameAerztlich))
        
        let uriZahnaerztlich = Int.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameZahnaerztlich = QName("Zahnaerztlich", uri: uriZahnaerztlich)
        _VSD_Selektivvertraege.Zahnaerztlich = Int.deserialize(infoset.select(qNameZahnaerztlich))
        
        let uriArt = String.namespaceUri ?? self.namespaceUri ?? infoset.namespaceContext.defaultURI!
        let qNameArt = QName("Art", uri: uriArt)
        _VSD_Selektivvertraege.Art = String?.deserialize(infoset.select(qNameArt))
        
        return _VSD_Selektivvertraege
    }
}

extension Optional where Wrapped == VSD_Selektivvertraege {
    public static func deserialize(_ infoset: Infoset) -> VSD_Selektivvertraege? {
        if infoset.count == 0 {
            return nil
        } else {
            return VSD_Selektivvertraege.deserialize(infoset)
        }
    }
}

extension Array where Element: VSD_Selektivvertraege {
    public var namespaceUri: String? {
        get {
            return VSD_Selektivvertraege.namespaceUri
        }
    }
    
    public static func deserialize(_ infoset: Infoset) -> [VSD_Selektivvertraege] {
        return infoset.map { (element: Infoset) in
        VSD_Selektivvertraege.deserialize(element)
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

