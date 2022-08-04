using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp14
{
    internal class Program
    {
        static void Main(string[] args)
        {
            float rubRate = 1 , dollarRate = 60.95f , euroRate = 71.56f;

            float countRublesBuy , countDollarsBuy , countEuroBuy;

            float ballanceInRubles = 15000.15f , ballanceInDollars = 755.66f , ballanceInEuro = 543.13f;

            string rublesForDollars = "1";
            string rublesForEuro = "2";
            string dollarsForRubles = "3";
            string dollarsForEuro = "4";
            string euroForRubles = "5";
            string euroForDollars = "6";

            string userInput;
            string commandExit = "7";
            string commandBack = "8";

            Console.WriteLine($"Ваш баланс: \n{ballanceInRubles} рублей. \n{ballanceInDollars} долларов. \n{ballanceInEuro} евро.\n");
            Console.WriteLine($"" +
                $"Купить рубли за доллары - введите {rublesForDollars} \nКупить рубли за евро - введите {rublesForEuro} \n \n" +
                $"Купить доллары за рубли - введите {dollarsForRubles} \nКупить доллары за евро - введите {dollarsForEuro}\n \n" +
                $"Купить евро за рубли - введите {euroForRubles} \nКупить евро за доллары - введите {euroForDollars} \n \n" +
                $"Для выхода - введите {commandExit} \n");
            userInput = Console.ReadLine();

            while (userInput != commandExit) 
            {
                switch (userInput)
                {
                    case "1":
                        Console.WriteLine("\nПокупка рублей за доллары:\nКурс рублей за доллары составляет: " + dollarRate + ". Ваш баланс - " + ballanceInDollars + " долларов" +
                           "\nСколько рублей вы хотите купить ?\n");
                        countRublesBuy = Convert.ToInt32(Console.ReadLine());
                        if (countRublesBuy > ballanceInDollars * dollarRate)
                        {
                            Console.WriteLine("\nНа вашем счете недостаточно средств");
                            continue;
                        }
                        if (countRublesBuy <= ballanceInDollars * dollarRate)
                        {
                            ballanceInRubles += countRublesBuy * rubRate;
                            ballanceInDollars -= countRublesBuy / dollarRate;

                            Console.WriteLine($"Ваш баланс: \n{ballanceInRubles} рублей. \n{ballanceInDollars} долларов. \n{ballanceInEuro} евро.\n");
                            break;
                        }
                        break;

                }
            }
        }
    }
}
