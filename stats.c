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
 * @file stats.c>
 * @brief <Assignment 1 Coursera intro to embedded systems >
 *
 * <Creating array statistics>
 *
 * @author <Benjamin Kubwimana>
 * @date <June 1st, 2023>
 *
 */

#include <stdio.h>
#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

void print_statistics(unsigned char *arr, unsigned int length)
{

  printf("\nStatistics:\n\n");
  printf("\tArray Minimum: %d\n", find_minimum(arr, length));
  printf("\tArray Maximum: %d\n", find_maximum(arr, length));
  printf("\tArray Mean: %.2f\n", find_mean(arr, length));
  printf("\tArray Median: %d\n\n", find_median(arr, length));
}

void print_array(unsigned char *arr, unsigned length)
{
  printf("Array: ");
  for (unsigned int i = 0; i < length; i++)
  {
    printf("%d ", arr[i]);
  }
  printf("\n");
}

unsigned char find_median(unsigned char *arr, unsigned int length)
{
  // step 1: sorting array

  sort_array(arr, length);

  if (length % 2 == 0)
  {
    return (arr[(length / 2) - 1] + arr[length / 2]) / 2;
  }
  else
  {
    // printf("catch");
    return arr[length / 2];
  }
}

double find_mean(unsigned char *arr, unsigned int length)
{
  unsigned int sum = 0;
  for (unsigned int i = 0; i < length; i++)
  {
    sum += arr[i];
  }
  return (double)sum / length;
}

unsigned char find_minimum(unsigned char *arr, unsigned int length)
{
  unsigned char min = arr[0];
  for (unsigned int i = 0; i < length; i++)
  {
    if (arr[i] < min)
    {
      min = arr[i];
    }
  }
  return min;
}

unsigned char find_maximum(unsigned char *arr, unsigned int length)
{
  unsigned char max = arr[0];
  for (unsigned int i = 0; i < length; i++)
  {
    if (arr[i] > max)
    {
      max = arr[i];
    }
  }
  return max;
}

void sort_array(unsigned char *arr, unsigned int length)
{
  for (unsigned int i = 0; i < length - 1; i++)
  {
    for (unsigned int j = 0; j < length - i - 1; j++)
    {
      if (arr[j] > arr[j + 1])
      {
        /* swapping */
        unsigned char temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

void main()
{

  unsigned char test[SIZE] = {34, 201, 190, 154, 8, 194, 2, 6,
                              114, 88, 45, 76, 123, 87, 25, 23,
                              200, 122, 150, 90, 92, 87, 177, 244,
                              201, 6, 12, 60, 8, 2, 5, 67,
                              7, 87, 250, 230, 99, 3, 100, 90};

  printf("Original \n\n\t");
  print_array(test, SIZE);
  printf("\nSorted \n");
  printf("\n\t");
  sort_array(test, SIZE);
  print_array(test, SIZE);
  print_statistics(test, SIZE);

  /* Other Variable Declarations Go Here */
  /* Statistics and Printing Functions Go Here */
}

/* Add other Implementation File Code Here */
