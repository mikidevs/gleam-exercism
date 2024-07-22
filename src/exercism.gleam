import difference_of_squares
import gleam/int
import gleam/io

pub fn main() {
  10 |> difference_of_squares.square_of_sum |> int.to_string |> io.println

  10 |> difference_of_squares.sum_of_squares |> int.to_string |> io.println
}
