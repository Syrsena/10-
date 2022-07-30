using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp7
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string userInput;
            Console.WriteLine("Введите сообщение:");
            userInput = (Console.ReadLine());

            int repeatsCount;
            Console.WriteLine("Введите количество повторов:");
            repeatsCount = Convert.ToInt32(Console.ReadLine());

            for (int i = 0; i < repeatsCount ; i++)
            {
                Console.WriteLine(userInput);
            }
        }
    }
}
