//
//  AsyncButton.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 16.03.23.
//

import SwiftUI

struct AsyncButton<Label: View>: View {
    
    var action: () async -> Void
    var actionOptions = Set(ActionOption.allCases)
    @ViewBuilder var label: () -> Label
    
    @State var title: String = ""
    @State private var isDisabled = false
    @State private var showProgressView = false
    
    var body: some View {
        Button(action: {
            if actionOptions.contains(.disableButton) {
                isDisabled.toggle()
            }
            
            Task {
                var progressViewTask: Task<Void, Error>?
                
                if actionOptions.contains(.showProgressView) {
                    progressViewTask = Task {
                        try await Task.sleep(nanoseconds: 150_000_000)
                        showProgressView.toggle()
                    }
                }
                
                await action()
                progressViewTask?.cancel()
                
                isDisabled.toggle()
                showProgressView.toggle()
            }
            
        }, label: {
            ZStack {
                label()
                    .opacity(showProgressView ? 0 : 1)
                
                if showProgressView {
                    HStack(spacing: 5) {
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle())
                            .tint(.white)
                        
                        Text(title)
                            .tint(.white)
                    }
                }
            }
        })
        .disabled(isDisabled)
    }
}

extension AsyncButton {
    enum ActionOption: CaseIterable {
        case disableButton
        case showProgressView
    }
}

extension AsyncButton where Label == Text {
    init(@ViewBuilder label: @escaping () -> Label, actionOptions: Set<ActionOption> = Set(ActionOption.allCases), action: @escaping () async -> Void){
        self.init(action: action, label: label)
    }
}
