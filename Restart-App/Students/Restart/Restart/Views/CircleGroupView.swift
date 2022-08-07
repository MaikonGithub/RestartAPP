//
//  CircleGroupView.swift
//  Restart
//
//  Created by Maikon Ferreira on 07/08/22.
//

import SwiftUI

struct CircleGroupView: View {
    //MARK: - PROPRETIES
    
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(.white.opacity(0.2), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }//ZSTACK END
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
