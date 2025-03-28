//
//  PlayersScreen.swift
//  Drunky
//
//  Created by Daniel Atitienei on 27.03.2025.
//

import SwiftUI

struct PlayersScreen: View {
    
    @State var nameValue: String = ""
    @StateObject var appSession = AppSession.shared
    
    @State var shouldNavigate: Bool = false
    
    @FocusState var isFieldFocused: Bool
     
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("Players")
                    .font(.extraBold(size: 40))
                    .foregroundStyle(Color.neonPink)
                
                
                ForEach(Array(appSession.players.enumerated()), id: \.offset) { index, player in
                    Text("\(index + 1). \(player)")
                        .font(.semiBold(size: 24))
                        .foregroundStyle(.white)
                }
                
                if appSession.players.count < 2 {
                    Text("Please add at least ")
                        .font(.semiBold(size: 24))
                        .foregroundStyle(.white) +
                    
                    Text("2 players")
                        .font(.semiBold(size: 24))
                        .foregroundStyle(Color.neonPink)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            
            VStack {
                FilledTextField(
                    text: $nameValue,
                    placeholder: "Enter player name",
                    onSubmit: {
                        if !nameValue.isEmpty {
                            appSession.addPlayer(player: nameValue)
                            nameValue = ""
                        }
                    }
                )
                .focused($isFieldFocused)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        isFieldFocused = true
                    }
                }
                .padding(.bottom, 10)
                
                RoundedButton(
                    backgroundColor: Color.neonPurple,
                    onClick: {
                        withAnimation {
                            appSession.addPlayer(player: nameValue)
                            nameValue = ""
                        }
                    }
                ) {
                    Text("Add player")
                        .font(.extraBold(size: 20))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                }
                .padding(.bottom, 4)
                
                RoundedButton(
                    onClick: {
                        if appSession.players.count >= 2 {
                            shouldNavigate = true
                        }
                    }
                ) {
                    Text("Let's play")
                        .font(.extraBold(size: 20))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
        .padding(.horizontal, 20)
        .padding(.vertical)
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.darkBlue)
        .onTapGesture {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                isFieldFocused = false
            }
        }
        .navigationDestination(isPresented: $shouldNavigate) {
            GameModeScreen()
        }
    }
}

#Preview {
    PlayersScreen()
}
