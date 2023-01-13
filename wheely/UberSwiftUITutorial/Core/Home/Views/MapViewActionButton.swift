//
//  MapViewActionButton.swift
//  UberSwiftUITutorial
//
//  Created by Saffanah Alkhathlan on 18/06/1444 AH.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var mapState: MapViewState
    @EnvironmentObject var viewModel: LocationSearchViewModel
    
    
    var body: some View {
        Button {
            withAnimation(.spring()) {
                actionForState(mapState)
                
            }
        } label: {
            Image(systemName: imageNameForState(mapState))
                .font(.title2)
                .foregroundColor(Color("Color"))
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black,radius: 3)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    func actionForState(_ state: MapViewState) {
        switch state {
        case .noInput:
            print("No input..")
        case .searchingForLocation:
            mapState = .noInput
        case .locationSelected:
            mapState = .noInput
            viewModel.selectedLocationCoordinate = nil
        }
    }
    
    func imageNameForState(_ state: MapViewState) -> String {
        switch state {
        case .noInput:
            return "line.3.horizontal"
        case .searchingForLocation, .locationSelected:
            return "arrow.left"
        }
    }
    struct MapViewActionButton_Previews: PreviewProvider {
        static var previews: some View {
            MapViewActionButton(mapState: .constant(.noInput))
        }
    }
}
