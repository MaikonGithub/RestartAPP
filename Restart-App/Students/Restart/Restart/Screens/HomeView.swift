//
//  HomeView.swift
//  Restart
//
//  Created by Maikon Ferreira on 24/07/22.
//

import SwiftUI

struct HomeView: View {
    //MARK: - PROPRETIES
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 20) {
        //MARK: - HEADER
            Spacer()
            Image("character-2")
                .resizable()
                .scaledToFit()
                .padding()
            
        //MARK: - CENTER
            Text("The time leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding() 
        //MARK: - FOOTER
            
            
           
            Button("Start") {
                isOnboardingViewActive = true
            }
        }//:VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
