# test: test_test  {
#   explore_source: users {
#     column: count {}
#   }
#   assert: should_fail {
#     expression: 1 = 0*${users.count} ;;
#   }
# }
