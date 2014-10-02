/*
* Copyright (C) 2014 - Simon Mika <simon@mika.se>
*
* This sofware is free software; you can redistribute it and/or
* modify it under the terms of the GNU Lesser General Public
* License as published by the Free Software Foundation; either
* version 2.1 of the License, or (at your option) any later version.
*
* This software is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
* Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public License
* along with this software. If not, see <http://www.gnu.org/licenses/>.
*/

use ooc-unit
use ooc-collections

SortedVectorTest: class extends Fixture {


	init: func() {
		super("SortedVectorList")
		this add("SortedVectorList cover create", func() {


			//sortedVectorList := SortedVectorList<Int> new(32) as SortedVectorList<Int>
			sortedVectorList := SortedVectorList<Int> new() as SortedVectorList<Int>

			"----" println()
			sortedVectorList[0] = 6
			sortedVectorList[1] = 9
			sortedVectorList[2] = 2
			sortedVectorList[3] = 8
			length := 4
			for (i in 0..length)
				sortedVectorList[i] toString() println()

			sortedVectorList count = length

			sortedVectorList sort(compareValues)


/*
			temporary: Int
			for (i in 0..sortedVectorList count-1) {
				for(j in 0..sortedVectorList count-1) {
					if(sortedVectorList[j] > sortedVectorList[j+1]) {
						("swaps j is " + j toString()) println()
						temporary = sortedVectorList[j]
						("temporary is " + temporary toString()) println()
						sortedVectorList[j] = sortedVectorList[j + 1]
						sortedVectorList[j + 1] = temporary
					}
				}
			}
*/

			//sortedVectorList sort()
			"----" println()
			for (i in 0..length)
				sortedVectorList[i] toString() println()
			/*
			("count " + sortedVectorList count toString()) println()
			sortedVectorList add(1)
			for (i in 0..sortedVectorList count)
				sortedVectorList[i] toString() println()
			sortedVectorList add(8)
			for (i in 0..sortedVectorList count)
				sortedVectorList[i] toString() println()
			sortedVectorList add(3)
			for (i in 0..sortedVectorList count)
				sortedVectorList[i] toString() println()
			("count " + sortedVectorList count toString()) println()
			for (i in 0..sortedVectorList count)
				sortedVectorList[i] toString() println()
				*/

			//sortedVectorList[i] toString() println()

			//vectorList := VectorList<Int> new() as VectorList<Int>
			//vectorList add(4)
			//vectorList[i] toString() println()

			//expect(sortedVectorList count, is equal to(0))

		})
	}
	compareValues := func (firstValue: Int, secondValue: Int) -> Bool {
		firstValue < secondValue

	}


}
SortedVectorTest new() run()
