//
//  File.swift
//  
//
//  Created by Vaibhav on 01/05/23.
//

import Foundation
import StocksAPI

@main
struct StocksAPIExec {
    
    //static func main() async {
//        let (data, _) = try! await URLSession.shared.data(from: URL(string: "https://query1.finance.yahoo.com/v7/finance/quote")!)
//
//        let quoteResponse = try! JSONDecoder().decode(QuoteResponse.self, from: data)
//
//        print(quoteResponse)
        
//        let (searchData, _) = try! await URLSession.shared.data(from: URL(string: "https://query1.finance.yahoo.com/v1/finance/search?q=Tesla")!)
//
//        let searchResponse = try! JSONDecoder().decode(SearchTickersResponse.self, from: searchData)
//
//        print(searchResponse)
        
//        let (chartData, _) = try! await URLSession.shared.data(from: URL(string: "https://query1.finance.yahoo.com/v8/finance/chart/asdsad?range=1d&interval=1m&includeTimestamp=true&indicators=quote")!)
//
//        let chartResponse = try! JSONDecoder().decode(ChartResponse.self, from: chartData)
//
//        print(chartResponse)
        
        static let stocksAPI = StocksAPI()
        
        static func main() async {
            do {
//                let quotes = try await stocksAPI.fetchQuotes(symbols: "")
//                print(quotes)
                
//                let tickers = try await stocksAPI.searchTickers(query: "tesla")
//                print(tickers)
                
                if let chart = try await stocksAPI.fetchChartData(symbol: "", range: .oneDay){
                    print(chart)
                }
                
            } catch {
                print(error.localizedDescription)
            }
        }
    }

