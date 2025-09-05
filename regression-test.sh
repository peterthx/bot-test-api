for i in {1..3}; do
    echo "Run to round #$i time(s)"
    robot --outputdir tests/suites/results/$(date +%Y%m%d_%H%M%S) tests/suites/health_check.robot
done