//
//  PDFView.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/04/17.
//

import SwiftUI
import PDFKit

struct PDFKitView: UIViewRepresentable {

    let pdfDocument: PDFDocument

    init(showing pdfDoc: PDFDocument) {
        self.pdfDocument = pdfDoc
    }

    //you could also have inits that take a URL or Data

    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.document = pdfDocument
        pdfView.autoScales = true
        return pdfView
    }

    func updateUIView(_ pdfView: PDFView, context: Context) {
        pdfView.document = pdfDocument
    }
}

struct PDFUIView: View {
    let samplepdf: String
    //@State変数にしておくと、初期化後に.onAppearで値を変更後Viewの再描写する
    @State var pdfDoc = PDFDocument()

    var body: some View {
        VStack {
            PDFKitView(showing: pdfDoc)
        }.onAppear(){
            let url = Bundle.main.url(forResource:samplepdf, withExtension: "pdf")!
            pdfDoc = PDFDocument(url: url)!
        }

    }
}


struct PDFUIView_Previews: PreviewProvider {
    static var previews: some View {
        PDFUIView(samplepdf: "samplepdf")
    }
}
