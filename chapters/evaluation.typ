= Experimental Performance Evaluation or validation of solution

This is a generic title. Replace it with an actual title that describes the context of the work.

Describe the performance metrics, experimental hypotheses, experimental conditions, test data, and expected results. Provide the test data. Interpret the results of the experiments. Pay special attention to cases where the experiments give no information or did not come out as expected. Draw lessons and conclusions from the experiments. Explain how additional experiments could validate or confirm results.

// Talk about data oriented design, explain the fact that first benchmarks that included memory transfers from CPU to GPU led to poor results. This is also the reason why cuDSS didn't perform well at the start, although in this case I don't think it's my fault, judging by the logs, but it is something intrinsic in the library. Show the outputs of compute-sanitizer
