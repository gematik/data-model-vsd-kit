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

import Foundation
import Nimble
import XCTest
import XMLTools
@testable import VSD_V5_2_VD

final class VSDTest: XCTestCase {

    func testXmlToStructDeserialize() {

        let file = "vsd_v5_2_vd.xml"
        let parser = XMLTools.Parser()
        parser.options.preserveSourceNamespaceContexts = true

        let url = URL(fileURLWithPath: #file)
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .appendingPathComponent("Resources")
                .appendingPathComponent(file)

        let xml: XMLTools.Infoset
        do {
            xml = try parser.parse(contentsOf: url)
        } catch {
            Nimble.fail("Could not parse xml file: \(error)")
            return
        }

        let vsdDocument = VSD_UC_AllgemeineVersicherungsdatenXML.deserialize(xml["UC_AllgemeineVersicherungsdatenXML"])

        expect {
            vsdDocument.CDM_VERSION
        } == "5.2.0"

        expect {
            vsdDocument.Versicherter.Versicherungsschutz.Kostentraeger.Kostentraegerkennung
        } == 999567890

        expect {
            vsdDocument.Versicherter.Versicherungsschutz.Kostentraeger.AbrechnenderKostentraeger?.Kostentraegerkennung
        } == 997234564
    }

    static var allTests = [
        ("testXmlToStructDeserialize", testXmlToStructDeserialize)
    ]
}
