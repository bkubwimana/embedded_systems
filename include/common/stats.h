/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material.
 *
 *****************************************************************************/
/**
 * @file stats.h>
 * @brief <Assignment 1 Coursera intro to embedded systems >
 *
 * <Creatingfunction declarations>
 *
 * @author <Benjamin Kubwimana>
 * @date <June 1st, 2023>
 *
 */
#ifndef __STATS_H__
#define __STATS_H__

/**
 * @brief Prints the statistics of an array including minimum, maximum, mean, and median.
 *
 * This function takes an array of unsigned char elements and its length,
 * and prints the minimum, maximum, mean, and median values of the array.
 *
 * @param arr Pointer to the array of unsigned char elements
 * @param length Length of the array
 */
void print_statistics(unsigned char *arr, unsigned int length);

/**
 * @brief Prints the elements of an array.
 *
 * This function takes an array of unsigned char elements and its length,
 * and prints the elements of the array.
 *
 * @param arr Pointer to the array of unsigned char elements
 * @param length Length of the array
 */
void print_array(unsigned char *arr, unsigned int length);

/**
 * @brief Finds the median value of an array.
 *
 * Input an array of unsigned char elements and its length,
 * sorts the array, and returns the median value.
 *
 * @param arr Pointer to the array of unsigned char elements
 * @param length Length of the array
 * @return Median value of the array
 */
unsigned char find_median(unsigned char *arr, unsigned int length);

/**
 * @brief Finds the mean value of an array.
 *
 * input an array of unsigned char elements and its length,
 * calculates the mean value, and returns it.
 *
 * @param arr Pointer to the array of unsigned char elements
 * @param length Length of the array
 * @return Mean value of the array
 */
double find_mean(unsigned char *arr, unsigned int length);

/**
 * @brief Finds the minimum value in an array.
 *
 * Input an array of unsigned char elements and its length,
 * finds the minimum value, and returns it as double.
 *
 * @param arr Pointer to the array of unsigned char elements
 * @param length Length of the array
 * @return Minimum value of the array
 */
unsigned char find_minimum(unsigned char *arr, unsigned int length);

/**
 * @brief Finds the maximum value in an array.
 *
 *  an array of unsigned char elements and its length,
 * finds the maximum value, and returns it.
 *
 * @param arr Pointer to the array of unsigned char elements
 * @param length Length of the array
 * @return Maximum value of the array
 */
unsigned char find_maximum(unsigned char *arr, unsigned int length);

/**
 * @brief Sorts an array in descending order.
 *
 *input an array of unsigned char elements and its length,
 * and sorts the array in descending order using the bubble sort algorithm.
 *
 * @param arr Pointer to the array of unsigned char elements
 * @param length Length of the array
 */
void sort_array(unsigned char *arr, unsigned int length);

#endif /* __STATS_H__ */
