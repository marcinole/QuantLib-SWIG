; Copyright (C) 2000, 2001, 2002 RiskMap srl
;
; This file is part of QuantLib, a free-software/open-source library
; for financial quantitative analysts and developers - http://quantlib.org/
;
; QuantLib is free software developed by the QuantLib Group; you can
; redistribute it and/or modify it under the terms of the QuantLib License;
; either version 1.0, or (at your option) any later version.
;
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; QuantLib License for more details.
;
; You should have received a copy of the QuantLib License along with this
; program; if not, please email ferdinando@ametrano.net
;
; The QuantLib License is also available at http://quantlib.org/license.html
; The members of the QuantLib Group are listed in the QuantLib License
;
; $Id$

(require-library "quantlib.ss" "quantlib")
(load "unittest.scm")

(let ((test-dir (build-path ".." ".." "test")))
  (if (directory-exists? test-dir)
      (current-directory test-dir)))

(load "date.scm")
(load "daycounters.scm")
(load "distributions.scm")
(load "europeanoption.scm")
(load "instruments.scm")
(load "marketelements.scm")
(load "operators.scm")
(load "riskstatistics.scm")
(load "segmentintegral.scm")
(load "solvers1d.scm")
(load "statistics.scm")
(load "termstructures.scm")

(let ((suite (make-suite)))
  (suite-add-test suite Date-test
                  "Testing dates")
  (suite-add-test suite Day-counter-test
                  "Testing act/act day counters")
  (suite-add-test suite Distribution-test
                  "Testing distributions")
  (suite-add-test suite European-option-Greek-test
                  "Testing European option greeks")
  (suite-add-test suite European-option-implied-vol-test
                  "Testing European option implied volatility")
  (suite-add-test suite European-option-binomial-engine-test
                  "Testing binomial European engines against analytic results")
  (suite-add-test suite Instrument-test
                  "Testing observability of stocks")
  (suite-add-test suite Market-element-observability-test
                  "Testing observability of market elements")
  (suite-add-test suite Derived-market-element-test
                  "Testing derived market elements")
  (suite-add-test suite Composite-market-element-test
                  "Testing composite market elements")
  (suite-add-test suite Market-element-handle-observability-test
                  "Testing observability of market element handles")
  (suite-add-test suite Operator-test
                  "Testing differential operators")
  (suite-add-test suite Risk-statistics-test
                  "Testing risk statistics")
  (suite-add-test suite Segment-integral-test
                  "Testing segment integral")
  (suite-add-test suite Solver-1D-test
                  "Testing 1D solvers")
  (suite-add-test suite Statistics-test
                  "Testing statistics")
  (suite-add-test suite Implied-term-structure-consistency-test
                  "Testing consistency of implied term structure")
  (suite-add-test suite Implied-term-structure-observability-test
                  "Testing observability of implied term structure")
  (suite-add-test suite Forward-spreaded-term-structure-consistency-test
                  "Testing consistency of forward-spreaded term structure")
  (suite-add-test suite Forward-spreaded-term-structure-observability-test
                  "Testing observability of forward-spreaded term structure")
  (suite-add-test suite Zero-spreaded-term-structure-consistency-test
                  "Testing consistency of zero-spreaded term structure")
  (suite-add-test suite Zero-spreaded-term-structure-observability-test
                  "Testing observability of zero-spreaded term structure")
  (suite-run suite))
