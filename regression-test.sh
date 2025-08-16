for i in {1..5}; do
    echo "Run to round #$i time(s)"
    robot --outputdir tests/results/$(date +%Y%m%d_%H%M%S) tests/health_check.robot
done