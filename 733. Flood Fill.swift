//
//  733. Flood Fill.swift
//  
//
//  Created by Anzhelika Sokolova on 22.02.2023.
//
/*
 An image is represented by an m x n integer grid image where image[i][j] represents the pixel value of the image.

 You are also given three integers sr, sc, and color. You should perform a flood fill on the image starting from the pixel image[sr][sc].

 To perform a flood fill, consider the starting pixel, plus any pixels connected 4-directionally to the starting pixel of the same color as the starting pixel, plus any pixels connected 4-directionally to those pixels (also with the same color), and so on. Replace the color of all of the aforementioned pixels with color.

 Return the modified image after performing the flood fill.
 */
import Foundation

class Solution {
     func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
          if image.count == 0 || image[0].count == 0 { return [] }
          var image = image
          
          let curColor = image[sr][sc]
          floodFillHelper(&image, sr, sc, curColor, newColor)
          
         return image
     }
     
     func floodFillHelper(_ image: inout [[Int]], _ sr: Int, _ sc: Int, _ curColor: Int, _ newColor: Int) {
         if sr < 0 || sr >= image.count ||
         sc < 0 || sc >= image[0].count ||
         image[sr][sc] != curColor || image[sr][sc] == newColor{ return }
 
         image[sr][sc] = newColor
 
         floodFillHelper(&image, sr-1, sc, curColor, newColor)
         floodFillHelper(&image, sr+1, sc, curColor, newColor)
         floodFillHelper(&image, sr, sc-1, curColor, newColor)
         floodFillHelper(&image, sr, sc+1, curColor, newColor)
     }
 }
