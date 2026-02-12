namespace D7 C# OOP .Models
{
    public class Employee : Human
    {
        private int _code;
        private string _job;

        public Employee() : base()
        {
            _job = "Developer";
        }

        public Employee(int id, string name, int code, string job) : base(id, name)
        {
            Code = code;
            Job = job;
        }

        public int Code
        {
            get => _code;
            set
            {
                if (value <= 0)
                    throw new ArgumentException("Code must be greater than 0");
                _code = value;
            }
        }

        public string Job
        {
            get => _job;
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                    throw new ArgumentException("Job cannot be empty");
                _job = value;
            }
        }

        public override string SayHello()
        {
            return $"مرحباً، أنا {Name} وأعمل كـ {Job}!";
        }

        public override string GetInfo()
        {
            return base.GetInfo() + $", Code: {Code}, Job: {Job}";
        }

        public override string ToString()
        {
            return $"[ID: {Id}] {Name} - Code: {Code} - Job: {Job}";
        }

        public void Work()
        {
            Console.WriteLine($"{Name} يعمل الآن كـ {Job}...");
        }
    }
}
