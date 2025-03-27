//
//  OutlinedTextFieldView.swift
//  PrisAppen
//
//  Created by Atitienei Daniel on 21.07.2023.
//

import SwiftUI

struct FilledTextField: View {
    
    @Binding var text: String
    var placeholder: String
    
    var onSubmit: () -> Void
    
    var body: some View {
        TextField("", text: $text)
            .placeholder(when: text.isEmpty) {
                Text(placeholder)
                    .font(.regular(size: 16))
                    .foregroundStyle(Color.white.opacity(0.5))
            }
            .submitLabel(.next)
            .font(.regular(size: 16))
            .foregroundStyle(Color.white)
            .padding(.horizontal, 20)
            .padding(.vertical, 12)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(hex: 0xFF57577F))
            )
            .onSubmit(onSubmit)
            .autocapitalization(.none)
    }
}
