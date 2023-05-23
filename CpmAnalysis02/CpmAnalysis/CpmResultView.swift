//
//  CpmResultView.swift
//  CpmAnalysis
//
//  Created by 김형관 on 2022/04/26.
//

//import SwiftUI
//
//struct CpmResultView: View {
//    @EnvironmentObject var vm: CpmViewModel
//
//
//    var body: some View {
//        ScrollView{
//        Text(vm.project.result)
//        }
//    }
//
//
//}
import SwiftUI

struct CpmResultView: View {
    @EnvironmentObject var vm: CpmViewModel
    @State private var scrollToTop = false
    
    var body: some View {
        ScrollViewReader { scrollViewProxy in
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("CPM Result")
                        .font(.largeTitle)
                        .bold()
                    Divider()
                    Divider()
                    Text(vm.project.result)
                        .font(.headline)
                        .bold()
                    Divider()
                }
                .padding()
                .id("cpmResultView")
            }
        }
        .navigationBarTitle("CPM Result", displayMode: .inline)
    }
}


//
//struct CpmResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        CpmResultView()
//    }
//}
