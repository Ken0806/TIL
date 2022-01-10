# @param {Integer} x
# @return {Integer}
def reverse(x)
  is_plus = x >= 0
  string_x_without_sign = is_plus ? x.to_s : (-x).to_s
  reversed_x = is_plus ? string_x_without_sign.reverse!.to_i : - string_x_without_sign.reverse!.to_i
  reversed_x.bit_length >= 32 ? 0 : reversed_x
end

def reverse_answer(x)
  x_rev_signed = x >= 0 ? '' : '-'
  x_rev = (x_rev_signed + x.to_s.delete('-').reverse).to_i
  x_rev.bit_length >= 32 ? 0 : x_rev
end
