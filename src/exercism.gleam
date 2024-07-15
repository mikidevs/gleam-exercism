import case_expressions
import gleam/io

pub fn main() {
  1 |> case_expressions.reply |> io.println
}
