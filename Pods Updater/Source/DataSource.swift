//
//  DataSource.swift
//  Pods Updater
//
//  Created by Kizito Nwose on 30/01/2018.
//  Copyright © 2018 Kizito Nwose. All rights reserved.
//

import Foundation
import RxSwift

protocol DataSource {
    func parsePodfile(at url: URL, onlyNewVersions: Bool) -> Observable<ProgressResult<[Pod]>>
    func getProjectNameForPodfile(at url: URL) -> String
    func setVersion(_ version: String, forPod pod: Pod, inPodfile url: URL) 
}
