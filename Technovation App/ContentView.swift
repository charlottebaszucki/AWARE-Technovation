//
//  ContentView.swift
//  Technovation App
//
//  Created by Indira Reddy on 3/5/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
    }
    
    var body: some View {
        NavigationView {
        ZStack{
            Color("Blue")
                .edgesIgnoringSafeArea(.all)
            VStack (alignment: .center) {
                HStack {
                    Text("AWARE")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                }
                .frame(minWidth: 0, maxHeight: 400, alignment: .topLeading)
                
                NavigationLink(destination: OldSearchView()) {
                    Text("Click to Search")
                        .foregroundColor(.black)
                        .padding(10)
                        .border(Color.black, width: 2)
            
                }
            }
            .navigationBarTitle("back").navigationBarHidden(true).navigationBarBackButtonHidden(true)
        }
    }
}


struct OldSearchView: View {
    
     @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.black]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor.black]
        UINavigationBar.appearance().tintColor = .black
    }
    
   
    let array = ["Fluoxetine","Citalopram","Sertraline","Patroxetine","Escitalopram","Clonazepam","Alprazolam","Lorazepam","Methylphenidate","Amphetamine","Dextroamphetamine","Lisdexamfetamine Dimesylate","Chlorpromazine","Haloperidol","Perphenazine","Fluphenazine","Risperidone","Olanzapine","Quetiapine","Ziprasidone","Aripiprazole","Paliperidone","Lurasidone","Carbamazepine","Lamotrigine","Oxcarbazepine"]
        
    @State private var searchText = ""
    
    @State private var isEditing = false
    
    var body: some View {
        VStack{
            Rectangle()
                        .fill(Color("Blue"))
                        .frame(height: 7)
                        .edgesIgnoringSafeArea(.horizontal)
           // HStack{
                HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading, 8)
                    .padding(.trailing, -10)
                    .foregroundColor(.gray)
                
                TextField("Search Medications", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .border(Color.white)
                    .autocapitalization(.none)
            }
            .border(Color("Blue"), width: 2)
            .padding(10)

                        List{
                            ForEach(array.filter{$0.range(of: (searchText),options: .caseInsensitive) != nil || searchText == ""}, id:\.self)
                            { searchText in
                                NavigationLink (destination: FluoxetineView()) {
                                Text(searchText)
                                }
                                }
                            }
                        
        }
            
                 
        .navigationBarTitle(Text("Search")).navigationBarHidden(false).navigationBarBackButtonHidden(true)
        .toolbar {
           Button (action: {
                self.mode.wrappedValue.dismiss()
            }) {
                Image(uiImage: UIImage(named: "home")!)
            }
        }

    
        }
    }
}


struct FluoxetineView: View {
    var body: some View {
        Rectangle()
                    .fill(Color("Blue"))
                    .frame(height: 7)
                    .edgesIgnoringSafeArea(.horizontal)
        List {
                VStack(alignment: .leading, spacing: 10) {
                    // Source of info https://medlineplus.gov/druginfo/meds/a689006.html
                    Group {
                        Text("Why is This Medication Prescribed?").font(.headline)
                        Text("Information about why someone might be prescribed Fluoxetine")
                        Spacer()
                    }
                    Group{
                        Text("How to Use This Medication").font(.headline)
                        Text("Information about how to use Fluoxetine")
                        Spacer()
                    }
                    Group{
                        Text("Possible Side Effects").font(.headline)
                        Text("Information about some of the common side effects of Fluoxetine")
                        Spacer()
                    }
                    Group{
                        Text("Other Information").font(.headline)
                        Text("Any additional important information about Fluoxetine that is not previously stated")
                        Spacer()
                    }
                    Group{
                        Text("Brand Names").font(.headline)
                        Text("Brands of Fluoxetine that you can get")
                        Spacer()
                    }
                }
                NavigationLink(destination: EmptyView()) {
                    Text("Reviews").font(.headline)
                }
           
        }.padding(.top, 10)
        
        .navigationBarTitle(Text("Fluoxetine"))
        }
    }



