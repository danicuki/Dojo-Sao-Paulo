import org.specs.Specification

object DojoSpecs extends Specification {
  "roman to numerals" should {
    "convert I" in {
      romanToNumerals("I") must_== 1
    }
    
    "convert II" in {
      romanToNumerals("II") must_== 2
    }

    "convert III" in {
      romanToNumerals("III") must_== 3
    }

    "convert IV" in {
      romanToNumerals("IV") must_== 4
    }
    "convert V" in {
      romanToNumerals("V")  must_== 5
    }
    "convert VI" in {
      romanToNumerals("VI")  must_== 6
    }

    "convert VII" in {
      romanToNumerals("VII")  must_== 7
    }

    "convert VIII" in {
      romanToNumerals("VIII")  must_== 8
    }

    "convert IX" in {
      romanToNumerals("IX")  must_== 9
    }

    "convert X" in {
      romanToNumerals("X")  must_== 10
    }

    "convert XI" in {
      romanToNumerals("XI")  must_== 11
    }
    "convert XII" in {
      romanToNumerals("XII")  must_== 12
    }
    "convert XIII" in {
      romanToNumerals("XIII")  must_== 13
    }
    "convert XIV" in {
      romanToNumerals("XIV")  must_== 14
    }
  }

  val char_to_num = Map(
      'I' -> 1,
      'V' -> 5,
      'X' -> 10
      )

  def romanToNumerals(number: String) = {

    romanToNumerals (numbers, 0);

    if (number.size>1 && isLesser(number(0),number(1)))
      number.reverse.foldRight(0) {
        (c,acc) => char_to_num(c) - acc
      }
     else
      number.reverse.foldRight(0) {
        (c,acc) => acc + char_to_num(c)
      }
    }
  def isLesser(first : Char , second : Char) = {
    char_to_num(first) < char_to_num(second)
  }

  def romanToNumerals(number: List[Char], acc: Int) = number match {
    case Nil => acc
    case first::Nil => romanToNumerals(Nil, acc + first)
    case first::second::resto if first > second =>      romanToNumerals(Nil, acc + first)
  }
}