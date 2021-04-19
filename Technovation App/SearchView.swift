//
//  SearchView.swift
//  Technovation App
//
//  Created by Indira Reddy on 4/3/21.
//

import Foundation
import SwiftUI

struct Medication: Identifiable {
    let id = UUID()
    let medication: String
    let prescription: String
    let use: String
    let sideEffects: String
    let otherInfo: String
    let brands: String
}

struct SearchView: View {
    
    private let medicationlist: [Medication] = [
        Medication(medication: "Fluoxetine",
                   prescription: "Information about why someone might be prescribed Fluoxetine",
                   use: "Information about how to use Fluoxetine",
                   sideEffects: "Information about some of the common side effects of Fluoxetine",
                   otherInfo: "Any additional important information about Fluoxetine that is not previously stated",
                   brands: "Brands of Fluoxetine that you can get"),
        Medication(medication: "Citalopram",
                   prescription: "Information about why someone might be prescribed Citalopram",
                   use: "Information about how to use Citalopram",
                   sideEffects: "Information about some of the common side effects of Citalopram",
                   otherInfo: "Any additional important information about Citalopram that is not previously stated",
                   brands: "Brands of Citalopram that you can get"),
        Medication(medication: "Sertraline",
                   prescription: "Information about why someone might be prescribed Sertraline",
                   use: "Information about how to use Sertraline",
                   sideEffects: "Information about some of the common side effects of Sertraline",
                   otherInfo: "Any additional important information about Sertraline that is not previously stated",
                   brands: "Brands of Sertraline that you can get"),
        Medication(medication: "Patroxetine",
                   prescription: "Information about why someone might be prescribed Patroxetine",
                   use: "Information about how to use Patroxetine",
                   sideEffects: "Information about some of the common side effects of Patroxetine",
                   otherInfo: "Any additional important information about Patroxetine that is not previously stated",
                   brands: "Brands of Patroxetine that you can get"),
        Medication(medication: "Esctialopram",
                   prescription: "Information about why someone might be prescribed Escitalopram",
                   use: "Information about how to use Escitalopram",
                   sideEffects: "Information about some of the common side effects of Escitalopram",
                   otherInfo: "Any additional important information about Escitalopram that is not previously stated",
                   brands: "Brands of Escitalopram that you can get"),
        Medication(medication: "Clonazepam",
                   prescription: "Information about why someone might be prescribed Clonazepam",
                   use: "Information about how to use Clonazepam",
                   sideEffects: "Information about some of the common side effects of Clonazepam",
                   otherInfo: "Any additional important information about Clonazepam that is not previously stated",
                   brands: "Brands of Clonazepam that you can get"),
        Medication(medication: "Alprazolam",
                   prescription: "Information about why someone might be prescribed Alprazolam",
                   use: "Information about how to use Alprazolam",
                   sideEffects: "Information about some of the common side effects of Alprazolam",
                   otherInfo: "Any additional important information about Alprazolam that is not previously stated",
                   brands: "Brands of Alprazolam that you can get"),
        Medication(medication: "Lorazepam",
                   prescription: "Information about why someone might be prescribed Lorazepam",
                   use: "Information about how to use Lorazepam",
                   sideEffects: "Information about some of the common side effects of Lorazepam",
                   otherInfo: "Any additional important information about Lorazepam that is not previously stated",
                   brands: "Brands of Lorazepam that you can get"),
        Medication(medication: "Methylphenidate",
                   prescription: "Information about why someone might be prescribed Methylphenidate",
                   use: "Information about how to use Methylphenidate",
                   sideEffects: "Information about some of the common side effects of Methylphenidate",
                   otherInfo: "Any additional important information about Methylphenidate that is not previously stated",
                   brands: "Brands of Methylphenidate that you can get"),
        Medication(medication: "Amphetamine",
                   prescription: "Information about why someone might be prescribed Amphetamine",
                   use: "Information about how to use Amphetamine",
                   sideEffects: "Information about some of the common side effects of Amphetamine",
                   otherInfo: "Any additional important information about Amphetamine that is not previously stated",
                   brands: "Brands of Amphetamine that you can get"),
        Medication(medication: "Dextroamphetamine",
                   prescription: "Information about why someone might be prescribed Dextroamphetamine",
                   use: "Information about how to use Dextroamphetamine",
                   sideEffects: "Information about some of the common side effects of Dextroamphetamine",
                   otherInfo: "Any additional important information about dextroamphetamine that is not previously stated",
                   brands: "Brands of Dextroamphetamine that you can get"),
        Medication(medication: "Lisdexamfetamine Dimesylate",
                   prescription: "Information about why someone might be prescribed Lisdexamfetamine Dimesylate",
                   use: "Information about how to use Lisdexamfetamine Dimesylate",
                   sideEffects: "Information about some of the common side effects of Lisdexamfetamine Dimesylate",
                   otherInfo: "Any additional important information about Lisdexamfetamine Dimesylate that is not previously stated",
                   brands: "Brands of Lisdexamfetamine Dimesylate that you can get"),
        Medication(medication: "Chlorpromazine",
                   prescription: "Information about why someone might be prescribed Chlorpromazine",
                   use: "Information about how to use Chlorpromazine",
                   sideEffects: "Information about some of the common side effects of Chlorpromazine",
                   otherInfo: "Any additional important information about Chlorpromazine that is not previously stated",
                   brands: "Brands of Chlorpromazine that you can get"),
        Medication(medication: "Haloperidol",
                   prescription: "Information about why someone might be prescribed Haloperidol",
                   use: "Information about how to use Haloperidol",
                   sideEffects: "Information about some of the common side effects of Haloperidol",
                   otherInfo: "Any additional important information about Haloperidol that is not previously stated",
                   brands: "Brands of Haloperidol that you can get"),
        Medication(medication: "Perphenazine",
                   prescription: "Information about why someone might be prescribed Perphenazine",
                   use: "Information about how to use Perphenazine",
                   sideEffects: "Information about some of the common side effects of Perphenazine",
                   otherInfo: "Any additional important information about Perphenazine that is not previously stated",
                   brands: "Brands of Perphenazine that you can get"),
        Medication(medication: "Fluphenazine",
                   prescription: "Information about why someone might be prescribed Fluphenazine",
                   use: "Information about how to use Fluphenazine",
                   sideEffects: "Information about some of the common side effects of Fluphenazine",
                   otherInfo: "Any additional important information about Fluphenazine that is not previously stated",
                   brands: "Brands of Fluphenazine that you can get"),
        Medication(medication: "Risperidone",
                   prescription: "Information about why someone might be prescribed Risperidone",
                   use: "Information about how to use Risperidone",
                   sideEffects: "Information about some of the common side effects of Risperidone",
                   otherInfo: "Any additional important information about Risperidone that is not previously stated",
                   brands: "Brands of Risperidone that you can get"),
        Medication(medication: "Olanzapine",
                   prescription: "Information about why someone might be prescribed Olanzapine",
                   use: "Information about how to use Olanzapine",
                   sideEffects: "Information about some of the common side effects of Olanzapine",
                   otherInfo: "Any additional important information about Olanzapine that is not previously stated",
                   brands: "Brands of Olanzapine that you can get"),
        Medication(medication: "Quetiapine",
                   prescription: "Information about why someone might be prescribed Quetiapine",
                   use: "Information about how to use Quetiapine",
                   sideEffects: "Information about some of the common side effects of Quetiapine",
                   otherInfo: "Any additional important information about Quetiapine that is not previously stated",
                   brands: "Brands of Quetiapine that you can get"),
        Medication(medication: "Ziprasidone",
                   prescription: "Information about why someone might be prescribed Ziprasidone",
                   use: "Information about how to use Ziprasidone",
                   sideEffects: "Information about some of the common side effects of Ziprasidone",
                   otherInfo: "Any additional important information about Ziprasidone that is not previously stated",
                   brands: "Brands of Ziprasidone that you can get"),
        Medication(medication: "Aripiprazole",
                   prescription: "Information about why someone might be prescribed Aripiprazole",
                   use: "Information about how to use Aripiprazole",
                   sideEffects: "Information about some of the common side effects of Aripiprazole",
                   otherInfo: "Any additional important information about Aripiprazole that is not previously stated",
                   brands: "Brands of Aripiprazole that you can get"),
        Medication(medication: "Paliperidone",
                   prescription: "Information about why someone might be prescribed Paliperidone",
                   use: "Information about how to use Paliperidone",
                   sideEffects: "Information about some of the common side effects of Paliperidone",
                   otherInfo: "Any additional important information about Paliperidone that is not previously stated",
                   brands: "Brands of Paliperidone that you can get"),
        Medication(medication: "Lurasidone",
                   prescription: "Information about why someone might be prescribed Lurasidone",
                   use: "Information about how to use Lurasidone",
                   sideEffects: "Information about some of the common side effects of Lurasidone",
                   otherInfo: "Any additional important information about Lurasidone that is not previously stated",
                   brands: "Brands of Lurasidone that you can get"),
        Medication(medication: "Carbamazepine",
                   prescription: "Information about why someone might be prescribed Carbamazepine",
                   use: "Information about how to use Carbamazepine",
                   sideEffects: "Information about some of the common side effects of Carbamazepine",
                   otherInfo: "Any additional important information about Carbamazepine that is not previously stated",
                   brands: "Brands of Carbamazepine that you can get"),
        Medication(medication: "Lamotrigine",
                   prescription: "Information about why someone might be prescribed Lamotrigine",
                   use: "Information about how to use Lamotrigine",
                   sideEffects: "Information about some of the common side effects of Lamotrigine",
                   otherInfo: "Any additional important information about Lamotrigine that is not previously stated",
                   brands: "Brands of Lamotrigine that you can get"),
        Medication(medication: "Oxcarbazepine",
                   prescription: "Information about why someone might be prescribed Oxcarbazepine",
                   use: "Information about how to use Oxcarbazepine",
                   sideEffects: "Information about some of the common side effects of Oxcarbazepine",
                   otherInfo: "Any additional important information about Oxcarbazepine that is not previously stated",
                   brands: "Brands of Oxcarbazepine that you can get"),
        ]
    

    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor(named: "Blue")
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.black]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor.black]
        UINavigationBar.appearance().tintColor = .black
       // UINavigationBar.appearance().titleTextAttributes = [.font: UIFont(name: "Arial", size: 30)!]
    }
    
    @State private var searchText = ""
    
    @State private var isEditing = false
    
    var body: some View {
        
        VStack {
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
        
           
            
            List(medicationlist) {medication in
                //ForEach(MedicationRowView(medication: medication).filter{$0.range(of: (searchText),options: .caseInsensitive) != nil || searchText == ""}, id:\.self)
            //{ searchText in
              //  NavigationLink (destination: MedicationView(medication: medication)) {
                //Text(searchText)
                //}
                //}
        }
        }
        .navigationBarTitle(Text("Search")).navigationBarHidden(false).navigationBarBackButtonHidden(true)
        .toolbar {
           // NavigationLink (destination: ContentView()) {
              //  Image(uiImage: UIImage(named: "home")!)
          //  }
           Button (action: {
                self.mode.wrappedValue.dismiss()
            }) {
                Image(uiImage: UIImage(named: "home")!)
            }
        }
    }
}

struct MedicationRowView: View {
    var medication: Medication
    
    var body: some View {
        Text("\(medication.medication)")
    }
}


