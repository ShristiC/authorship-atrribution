# authorship-atrribution

This is the final project that Grace Kim and Shristi Chitlangia worked on for Lin 373N. It is an NLP-based ML project, in which we use a transfer learning and supervised learning approach to determine the author of a text. This is also known as authorship attribution and has applications in identifying the source of anonymous texts / messages / excerpts, tracking cyber-bullying, and identifying the user of multiple social media accounts. 

Due to the time constraint, we used the NLTK Gutenberg Dataset in which there are 18 classic novels scraped from the Gutenberg Project with 12 unique authors. To make the dataset usable for our LSTM Model, we scaled it by splitting each book into sentences of 5, to create a total of 18,894 entries and the text also being referred as excerpts. 

## To run the Code
A Jupyter Notebook or Google Notebook, with Python 3 can be used to run the different segments of code (.ipynb files).

1. classification.ipynb: run this code to convert the nltk gutenberg dataset to a csv file with the necessary data (stored in gutenberg.csv)
2. Gutenberg_expanded_processing.ipynb: run this code to scale the original gutenberg dataset (already done and stored in gutenberg_expanded.csv)
3. Pretext.ipynb : run this code to perform the pretext task of replacing 1 sentence in the 5 sentences and determining which sentence in the excerpt is not by the same author (creates a new dataset and stores it in pretext.csv)
4. LSTM Model.ipynb : run this code for the bulk of the project along with alternative models to compare against the main model. Note: for the Naive Bayes, Decision Tree Classifier, and KNN Classifier models, the preprocessing of the text is the same as used for the LSTM Model. Linear Regression does its own preprocessing by Vectorizing the excerpt. (LSTM Model original contains the lstm code in which the 20 excerpts are not taken into account).

The pretext_output file stores the training model used for the pretext task. author_lstm_with_pretext_results stores the training model of the pretext task with the downstream task. author_lstm_results stores the training model for the base lstm model regarding authorship classification. 

## Limitation
The model is limited to the NLTK Gutenberg Datset which is a set of classic English novels. Though we planned to merge with a more modern dataset such as a Blog Authorship corpus, we did not have the time due to the time constriants. However, if you are interested in doing a similar project with a different dataset, you can try to use the existing code and replace the data with your target data instead. 

## Questions / Feedback
If you have any questions or feedback regarding our project, please send us an email at shristi.chitlangia@utexas.edu and yeeunk@utexas.edu! We would be happy to answer any questions. 

