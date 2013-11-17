import os
import string
from subprocess import call
import shutil
import filecmp

# This is the runner file absolute path
full_path = os.path.realpath(__file__)

test_dir = os.path.dirname(full_path)
input_dir = test_dir.replace("/tests", "/input")

print("Test dir: " + test_dir)
print("Input dir: " + input_dir)

failure_occurred = False

# Go through each .cmc file in input and run it
# Then, compare the output to that of the gold file.
# If it matches, success. Otherwise we have an error.
passed = 0
passedItems = []
failed = 0
failedItems = []
for fn in os.listdir(input_dir):
   if fn.endswith(".cm"):
      print("Running " + fn)
      execution_failed = False

      # Files for cminus input
      file_name = "input/" + fn
      assembly_name = file_name.replace(".cm", ".s")
      executable_name = file_name.replace(".cm", "")
      output_name = file_name.replace(".cm", ".output")

      # Files for c input
      test_file_name = file_name.replace("input/", "tests/").replace(".cm", ".c")
      test_executable_name = test_file_name.replace(".c", "")
      test_output_name = test_file_name.replace(".c", ".output")

      ### First compile the cminus files
      print "Compiling cminus file into assembly..."
      call(["./cmc", file_name])

      try:
        print "Compiling assembly file into executable..."
        call(["gcc", "-o", executable_name, assembly_name])
      except:
        execution_failed = True
        print "gcc call failed"

      try:
        print "Executing executable to output..."
        f = open(output_name, "w")
        call(["./" + executable_name], stdout=f)
      except:
        execution_failed = True
        print "Execution of output failed"


      ### Now compile the equivelant c files for correct output
      try:
        print "Compiling test c file into executable..."
        call(["gcc", "-o", test_executable_name, test_file_name])
      except:
        execution_failed = True
        print "gcc call failed"

      try:
        print "Executing executable to output..."
        f = open(test_output_name, "w")
        call(["./" + test_executable_name], stdout=f)
      except:
        execution_failed = True
        print "Execution of output failed"


      same = False
      try:
        print output_name
        print test_output_name
        same = filecmp.cmp(output_name, test_output_name)
      except:
        execution_failed = True
        print "Comparision failed. No such file."

      if(same and not execution_failed):
        passed += 1
        passedItems.append(fn)
        print "Test passed for " + fn + "!"
      else:
        failed += 1
        failedItems.append(fn)
        failure_occurred = True
        print "FAILURE for " + fn + ". This could be due to many reasons, including invalid gold file."

print "Passed: " + str(passed)
print passedItems
print "Failed: " + str(failed)
print failedItems
if failure_occurred:
  print "At least one of the tests FAILED"
else:
  print "All tests PASSED"