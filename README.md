Putting External Validation Performance of Major Bleeding Risk Models into Context
=============

<img src="https://img.shields.io/badge/Study%20Status-Repo%20Created-lightgray.svg" alt="Study Status: Repo Created">

- Analytics use case(s): **Prediction**
- Study type: **Methods, Clinical Application**
- Tags: **Patient Level Prediction**
- Study lead: **Clair Blacketer**
- Study lead forums tag: **[[clairblacketer]](https://forums.ohdsi.org/u/clairblacketer)**
- Study start date: **Feb 22, 2018**
- Study end date: **Jun 13, 2021, **

When developing predictive models, model simplicity and performance often need to be balanced. We propose a novel methodology to put the performance of bleeding risk prediction models ORBIT, ATRIA, HAS-BLED, CHADS2 and CHA2DS2-VASc into perspective.  Instead of comparing the existing models’ performance against the 0.5-1 AUROC scale, we suggest estimating a prediction task specific AUROC scale, lower bound AUROC (lbAUROC) and upper bound AUROC (ubAUROC), to help assess the balance between model simplicity and performance and determine whether more complex models could significantly improve the ability to predict the outcome.  We validate the existing bleeding risk prediction models by applying them to a cohort of new users of warfarin and a cohort of new users of direct oral anticoagulants (DOACs) separately, across a set of four observational databases. Then, we develop the lbAUROC-ubAUROC scale by using the validation data to train regularized logistic regression models. The internal validation AUROC of the model that includes only age and gender variables was used to estimate the lbAUROC.  The internal validation AUROC of the model that includes thousands of candidate variables was used to estimate the ubAUROC.  The age and gender only models achieved AUROCs between 0.50 and 0.56 (lower bound) and the large-scale models achieved AUROCs between 0.67 and 0.72 and between 0.70 and 0.77 (upper bound) within the target cohorts of warfarin new users and DOACs new users, respectively.  The AUROC of existing bleeding risk prediction models fall between the upper-bound and lower-bound of predictive models. Our study showed that this context of the predictability of the outcome is essential when evaluating risk prediction models to be administered in actual practice. 
