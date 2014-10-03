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
			//sortedVectorList := SortedVectorList<Cell<Int>> new() as SortedVectorList<Cell<Int>>

			//sortedVectorList := SortedVectorList<Int> new(55) as SortedVectorList<Int>
			//sortedVectorList := SortedVectorList<Int> new(compareValues as Func (Cell<Int>, Cell<Int>) -> Bool) as SortedVectorList<Int>
			sortedVectorList readCompareValuesFunctionPointer(compareValues)


			"----" println()
			/*
			cell := Cell new(6)
			sortedVectorList[0] = cell
			cell = Cell new(9)
			sortedVectorList[1] = cell
			cell = Cell new(2)
			sortedVectorList[2] = cell
			cell = Cell new(8)
			sortedVectorList[3] = cell
			*/
			/*sortedVectorList[0] = 6
			sortedVectorList[1] = 9
			sortedVectorList[2] = 2
			sortedVectorList3] = 8*/

			sortedVectorList add(6)
			sortedVectorList add(9)
			sortedVectorList add(2)
			sortedVectorList add(8)
			sortedVectorList add(3)
			length := 5
			for (i in 0..length)
				sortedVectorList[i] toString() println()
				//sortedVectorList[i][Int] toString() println()

			sortedVectorList count = length

			//sortedVectorList sortNew()
			"----" println()
			for (i in 0..length)
				sortedVectorList[i] toString() println()
				//sortedVectorList[i][Int] toString() println()
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

	compareValues := func (firstValue: Cell<Int>, secondValue: Cell<Int>) -> Bool {
		first := firstValue[Int]
		second := secondValue[Int]
		first > second
	}

}
SortedVectorTest new() run()
