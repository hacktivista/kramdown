# -*- coding: utf-8; frozen_string_literal: true -*-
#
#--
# Copyright (C) 2009-2019 Thomas Leitner <t_leitner@gmx.at>
#
# This file is part of kramdown which is licensed under the MIT.
#++
#

module Kramdown::Converter::MathEngine

  # Uses the MathJax javascript library for displaying math.
  #
  # Note that the javascript library itself is not include or linked, this has to be done
  # separately. Only the math content is marked up correctly.
  module Mathjax

    def self.call(converter, el, opts)
      value = converter.escape_html(el.value)
      el.options[:category] == :block ?  "\\[#{value}\\]\n" : "\\(#{value}\\)"
    end

  end

end
