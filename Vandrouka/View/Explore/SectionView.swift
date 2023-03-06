//
//  SectionView.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 6.03.23.
//

import SwiftUI

struct SectionView: View {
    
    @State var selection: PointCategory
    
    var body: some View {
        Picker("Category:", selection: $selection) {
            ForEach(PointCategory.allCases, id: \.self) { category in
                Text(category.rawValue).tag(category)
            }
        }
        .pickerStyle(.segmented)
//        SegmentControl(selection: selection.hashValue, size: CGSize(width: UIScreen.main.bounds.width - (padding * 2), height: 48), segmentedLabels: PointCategory.allCases.map { $0.rawValue } )
//            .ignoresSafeArea(edges: .trailing)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(selection: .castle)
    }
}
