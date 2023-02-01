package Schedule;

import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerFactory;
import org.quartz.SimpleScheduleBuilder;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory;

public class second {
	public static void main(String[] args) throws Exception {
		SchedulerFactory sf = new StdSchedulerFactory();
		Scheduler scheduler = sf.getScheduler();
		JobDetail job = JobBuilder.newJob(MyJob.class)
								.withIdentity("myjob", "group1")
								.build();
		Trigger trigger = TriggerBuilder.newTrigger()
								.withIdentity("mytrigger", "group1")
								.startNow()
								.withSchedule(SimpleScheduleBuilder.simpleSchedule()
												.withIntervalInSeconds(3)
												.repeatForever())
								.build();
		scheduler.scheduleJob(job, trigger);
		scheduler.start();
		Thread.sleep(20_000);  
		scheduler.shutdown();
	}
}






