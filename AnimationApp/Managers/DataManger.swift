//
//  DataManger.swift
//  HomeWork 2.9
//
//  Created by Alex Tegai on 28.04.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
        
    private init() {}
}

