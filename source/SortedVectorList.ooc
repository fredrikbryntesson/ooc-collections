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

import VectorList
import Vector
SortedVectorList: class <T> extends  VectorList<T>{
	init: func () {
		super()
	}

	printAnything: func <T> (value: T) {
		match T {
			case Int =>
				value as Int toString() println()
			case =>
				"<unknown>" println()
		}
	}


	add: func (item: T) {
		if(this count < 1) {
			this _vector[this count] = item
			this count += 1
		}
		else {
			this _vector[this count] = item
			//sort()
			this count += 1

		}
	}

	sort: func (f: Func (T, T) -> Bool) {

		// felet är att vi jämför två olika T, det kanske inte går, vill ha dom till ints: if(this _vector[j] > this _vector[j+1]) {

		bol := f(1,300)
		("the bool is " + bol toString()) println()
		temporary: T
		for (i in 0..this count-1) {
			for(j in 0..this count-1) {
				printAnything(this _vector[j])
				if(this _vector[j] > this _vector[j+1]) {
					("swaps j is " + j toString()) println()
					temporary = this _vector[j+1]
					this _vector[j] = this _vector[j + 1]
					this _vector[j + 1] = temporary
				}
			}
		}
	}
/*
	remove: func ~last -> T {
		super()
	}

	insert: func (index: Int, item: T) {
		super()
		sort()

	}
	remove: func (index: Int) -> T {
		super()
		sort()
	}

*/
	operator [] (index: Int) -> T {
		this _vector[index]
	}
	operator []= (index: Int, item: T) {
		this _vector[index] = item
	}

}
